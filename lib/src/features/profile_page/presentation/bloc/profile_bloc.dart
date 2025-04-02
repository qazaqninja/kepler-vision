import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kepler_vision/src/core/base/base_bloc/bloc/base_bloc.dart';
import 'package:kepler_vision/src/core/base/base_usecase/result.dart';
import 'package:kepler_vision/src/core/exceptions/domain_exception.dart';
import 'package:kepler_vision/src/core/services/injectable/injectable_service.dart';
import 'package:kepler_vision/src/core/services/injectable/service_register_proxy.dart';

import '../../data/models/profile_entity.dart';
import '../../data/models/profile_role_entity.dart';
import '../../domain/requests/get_profile_request.dart';
import '../../domain/usecases/get_profile_use_case.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends BaseBloc<ProfileEvent, ProfileState> {
  ProfileBloc(
    this._getProfileUseCase,
  ) : super(const _Initial());

  final GetProfileUseCase _getProfileUseCase;

  ProfileViewModel _viewModel = const ProfileViewModel();

  @override
  Future<void> onEventHandler(ProfileEvent event, Emitter emit) async {
    await event.when(
      started: () => _started(emit),
      getProfile: (request) => _getProfile(request, emit),
      selectRole: (role) => _selectRole(role, emit),
      updateNotifications: (role, value) =>
          _updateNotifications(role, value, emit),
      updateEventsNotifications: (role, value) =>
          _updateEventsNotifications(role, value, emit),
      updateComeAndGoNotifications: (role, value) =>
          _updateComeAndGoNotifications(role, value, emit),
    );
  }

  Future<void> _started(Emitter emit) async {
    emit(const _Loading());

    // await _getProfile(const GetProfileRequest(schoolId: 1, userId: 1), emit);
  }

  Future<void> _getProfile(GetProfileRequest request, Emitter emit) async {
    emit(const _Loading());

    final Result<ProfileEntity, DomainException> result =
        await _getProfileUseCase.call(request);

    if (result.isSuccessful) {
      final profile = result.data;
      _viewModel = _viewModel.copyWith(
        profile: profile,
      );

      emit(_Loaded(viewModel: _viewModel));
    } else {
      emit(_Error(result.failure!.message));
    }
  }

  Future<void> _selectRole(ProfileRoleEntity selectedRole, Emitter emit) async {
    if (_viewModel.profile == null || _viewModel.profile?.roles == null) {
      // If profile is not loaded, we can't select a role
      return;
    }

    // Update the roles list to put the selected role first
    final currentRoles =
        List<ProfileRoleEntity>.from(_viewModel.profile!.roles ?? []);

    // Find and remove the selected role from the list
    currentRoles.removeWhere((role) => role.name == selectedRole.name);

    // Add the selected role at the beginning of the list
    currentRoles.insert(0, selectedRole);

    // Create a new profile with the updated roles list
    final updatedProfile = _viewModel.profile!.copyWith(
      roles: currentRoles,
    );

    // Update the view model
    _viewModel = _viewModel.copyWith(
      profile: updatedProfile,
    );

    // Emit the updated state
    emit(_Loaded(viewModel: _viewModel));
  }

  Future<void> _updateNotifications(
      ProfileRoleEntity role, bool value, Emitter emit) async {
    if (_viewModel.profile == null || _viewModel.profile?.roles == null) {
      return;
    }

    // Create a copy of the roles list
    final currentRoles =
        List<ProfileRoleEntity>.from(_viewModel.profile!.roles ?? []);

    // Find the index of the role that we need to update
    final roleIndex = currentRoles.indexWhere((r) => r.name == role.name);
    if (roleIndex == -1) {
      return; // Role not found, nothing to update
    }

    // Create an updated role with new notification settings
    // If main notification is turned off, also turn off all other notifications
    final updatedRole = currentRoles[roleIndex].copyWith(
      allowNotification: value,
      // If main notifications are turned off, also turn off all other notifications
      events: value ? currentRoles[roleIndex].events : false,
      comeAndGo: value ? currentRoles[roleIndex].comeAndGo : false,
    );

    // Replace the old role with the updated one
    currentRoles[roleIndex] = updatedRole;

    // Create an updated profile with the new roles list
    final updatedProfile = _viewModel.profile!.copyWith(
      roles: currentRoles,
    );

    // Update the view model
    _viewModel = _viewModel.copyWith(
      profile: updatedProfile,
    );

    // Emit the updated state
    emit(_Loaded(viewModel: _viewModel));
  }

  Future<void> _updateEventsNotifications(
      ProfileRoleEntity role, bool value, Emitter emit) async {
    if (_viewModel.profile == null || _viewModel.profile?.roles == null) {
      return;
    }

    // Create a copy of the roles list
    final currentRoles =
        List<ProfileRoleEntity>.from(_viewModel.profile!.roles ?? []);

    // Find the index of the role that we need to update
    final roleIndex = currentRoles.indexWhere((r) => r.name == role.name);
    if (roleIndex == -1) {
      return; // Role not found, nothing to update
    }

    final currentRole = currentRoles[roleIndex];
    final bool mainNotificationEnabled = currentRole.allowNotification;

    // If turning ON events notification while main notification is OFF,
    // we need to turn ON the main notification too
    if (value && !mainNotificationEnabled) {
      final updatedRole = currentRole.copyWith(
        allowNotification: true, // Turn on main notification
        events: true, // Turn on events notification
      );
      currentRoles[roleIndex] = updatedRole;
    } else {
      // Normal case: just update the events notification
      final updatedRole = currentRole.copyWith(
        events: value,
      );
      currentRoles[roleIndex] = updatedRole;
    }

    // Create an updated profile with the new roles list
    final updatedProfile = _viewModel.profile!.copyWith(
      roles: currentRoles,
    );

    // Update the view model
    _viewModel = _viewModel.copyWith(
      profile: updatedProfile,
    );

    // Emit the updated state
    emit(_Loaded(viewModel: _viewModel));
  }

  Future<void> _updateComeAndGoNotifications(
      ProfileRoleEntity role, bool value, Emitter emit) async {
    if (_viewModel.profile == null || _viewModel.profile?.roles == null) {
      return;
    }

    // Create a copy of the roles list
    final currentRoles =
        List<ProfileRoleEntity>.from(_viewModel.profile!.roles ?? []);

    // Find the index of the role that we need to update
    final roleIndex = currentRoles.indexWhere((r) => r.name == role.name);
    if (roleIndex == -1) {
      return; // Role not found, nothing to update
    }

    final currentRole = currentRoles[roleIndex];
    final bool mainNotificationEnabled = currentRole.allowNotification;

    // If turning ON comeAndGo notification while main notification is OFF,
    // we need to turn ON the main notification too
    if (value && !mainNotificationEnabled) {
      final updatedRole = currentRole.copyWith(
        allowNotification: true, // Turn on main notification
        comeAndGo: true, // Turn on comeAndGo notification
      );
      currentRoles[roleIndex] = updatedRole;
    } else {
      // Normal case: just update the comeAndGo notification
      final updatedRole = currentRole.copyWith(
        comeAndGo: value,
      );
      currentRoles[roleIndex] = updatedRole;
    }

    // Create an updated profile with the new roles list
    final updatedProfile = _viewModel.profile!.copyWith(
      roles: currentRoles,
    );

    // Update the view model
    _viewModel = _viewModel.copyWith(
      profile: updatedProfile,
    );

    // Emit the updated state
    emit(_Loaded(viewModel: _viewModel));
  }

  @override
  Future<void> close() {
    getIt.resetBloc(this);
    return super.close();
  }
}
