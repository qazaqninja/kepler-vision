import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:kepler_vision/src/core/base/base_usecase/result.dart';
import 'package:kepler_vision/src/core/components/events/domain/models/event_entity.dart';
import 'package:kepler_vision/src/core/components/filter/domain/models/date_filter.dart';
import 'package:kepler_vision/src/core/exceptions/domain_exception.dart';
import 'package:kepler_vision/src/features/events/domain/models/enums/event_status.dart';
import 'package:kepler_vision/src/features/events/domain/requests/get_events_request.dart';
import 'package:kepler_vision/src/features/events/domain/usecases/get_events_use_case.dart';
import 'package:kepler_vision/src/features/review/domain/entities/analytics_entity.dart';
import 'package:kepler_vision/src/features/review/presentation/bloc/review_event.dart';
import 'package:kepler_vision/src/features/review/presentation/bloc/review_state.dart';

@injectable
class ReviewBloc extends Bloc<ReviewEvent, ReviewState> {
  ReviewBloc(this._getEventsUseCase,) : super(
    ReviewState(
      analyticsDateFilter: DateFilter.day(
        startDate: DateTime.now(),
      ),
    ),
  ) {
    _setupHandlers();

    add(ReviewFetched());
  }

  final GetEventsUseCase _getEventsUseCase;

  void _setupHandlers() {
    on<ReviewFetched>(_fetchData);
    on<ReviewAnalyticsFilterChanged>(_analyticsFilterChanged);
  }

  Future<void> _fetchData(ReviewFetched event,
      Emitter<ReviewState> emit,) async {
    emit(state.copyWith(
      analytics: null,
    ));
    await Future.delayed(const Duration(seconds: 2));
    final result = await _getEventsUseCase(
        GetEventsRequest(schoolId: 1, status: EventStatus.unprocessed));
    switch (result) {
      case FailureResult<List<EventEntity>, DomainException>():
        return;
      case SuccessResult<List<EventEntity>,
          DomainException>(data: final events):
        emit(
          state.copyWith(
            conflicts: events,
            analytics: AnalyticsEntity(
              conflicts: 20,
              smoking: 0,
              cheating: 50,
              hotspot: "Кафетерия",
              troubleClass: "5Б",
            ),
          ),
        );
    }
  }

  Future<void> _analyticsFilterChanged(ReviewAnalyticsFilterChanged event,
      Emitter<ReviewState> emit,) async {
    if (event.dateFilter.runtimeType == state.analyticsDateFilter.runtimeType &&
        event.dateFilter is! DateFilterCustom) {
      return;
    }
    emit(
      state.copyWith(
        analyticsDateFilter: event.dateFilter,
      ),
    );
    add(ReviewFetched());
  }
}
