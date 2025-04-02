import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../base/base_models/base_entity.dart';

part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

@freezed
class UserEntity extends BaseEntity with _$UserEntity {
  const factory UserEntity({
    required String id,
    required String email,
    required String firstName,
    required String lastName,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) => _$UserEntityFromJson(json);
}
