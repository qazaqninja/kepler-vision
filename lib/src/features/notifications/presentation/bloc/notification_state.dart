part of 'notification_bloc.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState.loading() = _Loading;
  const factory NotificationState.loaded({
    required NotificationViewModel viewModel,
  }) = _Loaded;
  const factory NotificationState.error(String error) = _Error;
}

@freezed
class NotificationViewModel with _$NotificationViewModel {
  factory NotificationViewModel({
    GetNotificationsEntity? notifications,
  }) = _NotificationViewModel;
}
