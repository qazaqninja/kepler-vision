import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:kepler_vision/src/core/base/base_usecase/result.dart';
import 'package:kepler_vision/src/core/components/roles/domain/use_case/get_available_roles_stream_use_case.dart';
import 'package:kepler_vision/src/core/components/roles/domain/use_case/get_current_role_stream_use_case.dart';
import 'package:kepler_vision/src/core/components/roles/presentation/bloc/role_state.dart';
import 'package:kepler_vision/src/core/exceptions/domain_exception.dart';
import 'package:kepler_vision/src/features/settings/domain/entities/role_entity.dart';

import '../../domain/use_case/set_role_use_case.dart';

@injectable
class RoleCubit extends Cubit<RoleState> {
  RoleCubit(
    this._getAvailableRolesStreamUseCase,
    this._getCurrentRoleStreamUseCase,
    this._setRoleUseCase,
  ) : super(RoleState()) {
    _init();
  }

  late final StreamSubscription _roleSubscription;
  late final StreamSubscription _rolesSubscription;

  final GetAvailableRolesStreamUseCase _getAvailableRolesStreamUseCase;
  final GetCurrentRoleStreamUseCase _getCurrentRoleStreamUseCase;
  final SetRoleUseCase _setRoleUseCase;

  Future<void> _init() async {
    _rolesSubscription = (await _getAvailableRolesStreamUseCase())
        .listen(_onAvailableRolesChanged);
    _roleSubscription =
        (await _getCurrentRoleStreamUseCase()).listen(_onRoleChanged);
  }

  Future<void> setRole(RoleEntity role) async {
    await _setRoleUseCase(role);
  }

  void _onAvailableRolesChanged(
      Result<List<RoleEntity>, DomainException> result) {
    switch (result) {
      case SuccessResult<List<RoleEntity>, DomainException>(data: final roles):
        emit(state.copyWith(availableRoles: roles));
      case FailureResult<List<RoleEntity>, DomainException>():
      //pass
    }
  }

  void _onRoleChanged(Result<RoleEntity?, DomainException> result) {
    switch (result) {
      case SuccessResult<RoleEntity?, DomainException>(data: final role):
        emit(state.copyWith(currentRole: role));
      case FailureResult<RoleEntity?, DomainException>():
      //pass
    }
  }

  @override
  Future<void> close() async {
    await _rolesSubscription.cancel();
    await _roleSubscription.cancel();
    return super.close();
  }
}
