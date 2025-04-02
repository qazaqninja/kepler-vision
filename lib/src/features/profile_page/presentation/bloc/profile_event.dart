part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.started() = _Started;
  const factory ProfileEvent.getProfile(GetProfileRequest request) =
      _GetProfile;
  const factory ProfileEvent.selectRole(ProfileRoleEntity role) = _SelectRole;
  const factory ProfileEvent.updateNotifications({
    required ProfileRoleEntity role,
    required bool value,
  }) = _UpdateNotifications;
  const factory ProfileEvent.updateEventsNotifications({
    required ProfileRoleEntity role,
    required bool value,
  }) = _UpdateEventsNotifications;
  const factory ProfileEvent.updateComeAndGoNotifications({
    required ProfileRoleEntity role,
    required bool value,
  }) = _UpdateComeAndGoNotifications;
}
