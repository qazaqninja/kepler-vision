import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_entity.dart';
import 'profile_role_entity.dart';

part 'profile_entity.freezed.dart';
part 'profile_entity.g.dart';

@freezed
class ProfileEntity extends BaseEntity with _$ProfileEntity {
  const factory ProfileEntity({
    int? id,
    String? fullName,
    String? email,
    List<ProfileRoleEntity>? roles,
  }) = _ProfileEntity;

  factory ProfileEntity.fromJson(Map<String, dynamic> json) =>
      _$ProfileEntityFromJson(json);
}
