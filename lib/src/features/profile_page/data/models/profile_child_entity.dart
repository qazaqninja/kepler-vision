import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_entity.dart';

part 'profile_child_entity.freezed.dart';
part 'profile_child_entity.g.dart';

@freezed
class ProfileChildEntity extends BaseEntity with _$ProfileChildEntity {
  const factory ProfileChildEntity({
    int? id,
    String? fullName,
    String? email,
    String? imageUrl,
  }) = _ProfileChildEntity;

  factory ProfileChildEntity.fromJson(Map<String, dynamic> json) =>
      _$ProfileChildEntityFromJson(json);
}
