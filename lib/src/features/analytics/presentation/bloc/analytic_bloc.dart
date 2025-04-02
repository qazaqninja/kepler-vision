import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kepler_vision/src/core/components/filter/domain/extensions/date_filter_extension.dart';
import 'package:kepler_vision/src/core/components/filter/domain/models/date_filter.dart';
import 'package:kepler_vision/src/features/analytics/domain/entities/get_analytics_entity.dart';
import 'package:kepler_vision/src/features/analytics/domain/entities/get_hot_spots_entity.dart';
import 'package:kepler_vision/src/features/analytics/domain/entities/get_problem_classes_entity.dart';
import 'package:kepler_vision/src/features/analytics/domain/requests/get_events_count_request.dart';
import 'package:kepler_vision/src/features/analytics/domain/requests/get_hot_spots_request.dart';
import 'package:kepler_vision/src/features/analytics/domain/requests/get_problem_classes_request.dart';
import 'package:kepler_vision/src/features/analytics/domain/usecases/get_analytics_use_case.dart';
import 'package:kepler_vision/src/features/analytics/domain/usecases/get_hot_spots_use_case.dart';
import 'package:kepler_vision/src/features/analytics/domain/usecases/get_problem_classes_use_case.dart';

import '../../../../core/base/base_bloc/bloc/base_bloc.dart';
import '../../../../core/base/base_usecase/result.dart';
import '../../../../core/exceptions/domain_exception.dart';

part 'analytic_bloc.freezed.dart';
part 'analytic_event.dart';
part 'analytic_state.dart';

class AnalyticBloc extends BaseBloc<AnalyticEvent, AnalyticState> {
  AnalyticBloc(
    this.getAnalyticsUseCase,
    this.getHotSpotsUseCase,
    this.getProblemClassesUseCase,
  ) : super(const AnalyticState.loading());

  final GetAnalyticsUseCase getAnalyticsUseCase;
  final GetHotSpotsUseCase getHotSpotsUseCase;
  final GetProblemClassesUseCase getProblemClassesUseCase;

  AnalyticViewModel _viewModel = AnalyticViewModel(
    analyticsDateFilter: DateFilter.day(
      startDate: DateTime.now(),
    ),
  );

  @override
  Future<void> onEventHandler(AnalyticEvent event, Emitter emit) async {
    await event.when(
      started: () => _started(event as _Started),
      getEventsCount: (request) => _getEventsCount(
        event as _GetEventCount,
        emit as Emitter<AnalyticState>,
      ),
      changeDateFilter: (dateFilter) => _changeDateFilter(
        event as _ChangeDateFilter,
        emit as Emitter<AnalyticState>,
      ),
      getHotSpots: (request) => _getHotSpots(
        event as _GetHotSpots,
        emit as Emitter<AnalyticState>,
      ),
      getProblemClasses: (request) => _getProblemClasses(
        event as _GetProblemClasses,
        emit as Emitter<AnalyticState>,
      ),
      loadAllData: (schoolId, dateFilter) => _loadAllData(
        event as _LoadAllData,
        emit as Emitter<AnalyticState>,
      ),
    );
  }

  Future<void> _started(_Started event) async {}
  Future<void> _loadAllData(_LoadAllData event, Emitter<AnalyticState> emit) async {
    emit(const AnalyticState.loading());

    final dateFilter = event.dateFilter ?? DateFilter.day(startDate: DateTime.now());
    final startDate = dateFilter.getStartDate();
    final endDate = dateFilter.getEndDate();

    // Create all requests
    final eventsCountRequest = GetEventsCountRequest(
      schoolId: event.schoolId,
      startDate: startDate,
      endDate: endDate,
    );

    final hotSpotsRequest = GetHotSpotsRequest(
      schoolId: event.schoolId,
    );

    final problemClassesRequest = GetProblemClassesRequest(
      schoolId: event.schoolId,
    );

    // Execute all futures in parallel
    final analyticsResultFuture = getAnalyticsUseCase.call(eventsCountRequest);
    final hotSpotsResultFuture = getHotSpotsUseCase.call(hotSpotsRequest);
    final problemClassesResultFuture = getProblemClassesUseCase.call(problemClassesRequest);

    // Wait for all futures to complete
    final results = await Future.wait([analyticsResultFuture, hotSpotsResultFuture, problemClassesResultFuture]);

    final analyticsResult = results[0];
    final hotSpotsResult = results[1];
    final problemClassesResult = results[2];

    // Check if any requests failed
    if (analyticsResult.failure != null) {
      return emit(AnalyticState.error(analyticsResult.failure!.message));
    }

    if (hotSpotsResult.failure != null) {
      return emit(AnalyticState.error(hotSpotsResult.failure!.message));
    }

    if (problemClassesResult.failure != null) {
      return emit(AnalyticState.error(problemClassesResult.failure!.message));
    }

    _viewModel = _viewModel.copyWith(
      analytics: analyticsResult.data as GetAnalyticsEntity?,
      analyticsDateFilter: dateFilter,
      hotSpots: hotSpotsResult.data as GetHotSpotsEntity?,
      problemClasses: problemClassesResult.data as GetProblemClassesEntity?,
    );

    return emit(AnalyticState.loaded(viewModel: _viewModel));
  }

  Future<void> _getHotSpots(_GetHotSpots event, Emitter emit) async {
    emit(const _Loading());
    final Result<GetHotSpotsEntity, DomainException> result = await getHotSpotsUseCase.call(event.request);
    final data = result.data;
    if (data != null) {
      _viewModel = _viewModel.copyWith(hotSpots: data);
      return emit(
        _Loaded(
          viewModel: _viewModel.copyWith(
            hotSpots: data,
          ),
        ),
      );
    }
    return emit(_Error(result.failure!.message));
  }

  Future<void> _getProblemClasses(_GetProblemClasses event, Emitter emit) async {
    emit(const _Loading());
    final Result<GetProblemClassesEntity, DomainException> result = await getProblemClassesUseCase.call(event.request);
    final data = result.data;
    if (data != null) {
      _viewModel = _viewModel.copyWith(problemClasses: data);
      return emit(
        _Loaded(
          viewModel: _viewModel.copyWith(
            problemClasses: data,
          ),
        ),
      );
    }
    return emit(_Error(result.failure!.message));
  }

  Future<void> _changeDateFilter(_ChangeDateFilter event, Emitter emit) async {
    if (_viewModel.analyticsDateFilter?.runtimeType == event.dateFilter.runtimeType &&
        event.dateFilter is! DateFilterCustom) {
      return;
    }

    _viewModel = _viewModel.copyWith(analyticsDateFilter: event.dateFilter);
    emit(_Loaded(viewModel: _viewModel));

    final startDate = (event.dateFilter.getStartDate());
    final endDate = (event.dateFilter.getEndDate());

    add(AnalyticEvent.getEventsCount(
      GetEventsCountRequest(
        schoolId: '1',
        startDate: startDate,
        endDate: endDate,
      ),
    ));
  }

  Future<void> _getEventsCount(_GetEventCount event, Emitter emit) async {
    emit(const _Loading());
    final Result<GetAnalyticsEntity, DomainException> result = await getAnalyticsUseCase.call(event.request);
    final data = result.data;

    if (data != null) {
      _viewModel = _viewModel.copyWith(analytics: data);
      return emit(
        _Loaded(
          viewModel: _viewModel.copyWith(
            analytics: data,
          ),
        ),
      );
    }
    return emit(_Error(result.failure!.message));
  }
}
