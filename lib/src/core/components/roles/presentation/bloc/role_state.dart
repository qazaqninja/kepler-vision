import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kepler_vision/src/features/settings/domain/entities/role_entity.dart';

part 'role_state.freezed.dart';

@freezed
class RoleState with _$RoleState {
  factory RoleState({
    @Default([]) List<RoleEntity> availableRoles,
    RoleEntity? currentRole,
  }) = _RoleState;
}
