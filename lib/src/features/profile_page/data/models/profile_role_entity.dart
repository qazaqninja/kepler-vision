import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_entity.dart';
import 'profile_child_entity.dart';
import 'profile_class_entity.dart';

part 'profile_role_entity.freezed.dart';
part 'profile_role_entity.g.dart';

@freezed
class ProfileRoleEntity extends BaseEntity with _$ProfileRoleEntity {
  @JsonSerializable(explicitToJson: true)
  const factory ProfileRoleEntity({
    @Default("parent") String? name,
    required bool allowNotification,
    required bool events,
    bool? redirectedEvents,
    List<ProfileChildEntity>? children,
    bool? comeAndGo,
    List<ProfileClassEntity>? classes,
  }) = _ProfileRoleEntity;

  factory ProfileRoleEntity.fromJson(Map<String, dynamic> json) =>
      _$ProfileRoleEntityFromJson(json);
}
