import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kepler_vision/src/features/notifications/domain/entities/get_notifications_entity.dart';
import 'package:kepler_vision/src/features/notifications/domain/requests/get_notifications_request.dart';
import 'package:kepler_vision/src/features/notifications/domain/usecases/get_notification_use_case.dart';

import '../../../../core/base/base_bloc/bloc/base_bloc.dart';
import '../../../../core/base/base_usecase/result.dart';
import '../../../../core/exceptions/domain_exception.dart';

part 'notification_bloc.freezed.dart';
part 'notification_event.dart';
part 'notification_state.dart';

class NotificationBloc extends BaseBloc<NotificationEvent, NotificationState> {
  NotificationBloc(
    this.getNotificationUseCase,
  ) : super(const NotificationState.loading());

  final GetNotificationUseCase getNotificationUseCase;

  NotificationViewModel _viewModel = NotificationViewModel();

  @override
  Future<void> onEventHandler(NotificationEvent event, Emitter emit) async {
    await event.when(
        started: () => _started(event as _Started),
        getNotification: (request) => _getNotification(
              event as _GetNotification,
              emit as Emitter<NotificationState>,
            ));
  }

  Future<void> _started(_Started event) async {}
  Future<void> _getNotification(_GetNotification event, Emitter<NotificationState> emit) async {
    emit(_Loading());
    final Result<GetNotificationsEntity, DomainException> result = await getNotificationUseCase.call(event.request);
    final data = result.data;
    _viewModel = _viewModel.copyWith(notifications: data);
    if (data != null) {
      return emit(
        _Loaded(
          viewModel: _viewModel.copyWith(
            notifications: data,
          ),
        ),
      );
    }
    return emit(_Error(result.failure!.message));
  }
}
