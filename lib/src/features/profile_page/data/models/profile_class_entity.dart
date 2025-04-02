import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_entity.dart';

part 'profile_class_entity.freezed.dart';
part 'profile_class_entity.g.dart';

@freezed
class ProfileClassEntity extends BaseEntity with _$ProfileClassEntity {
  const factory ProfileClassEntity({
    String? name,
    bool? isClassroomTeacher,
    String? courseName,
  }) = _ProfileClassEntity;

  factory ProfileClassEntity.fromJson(Map<String, dynamic> json) =>
      _$ProfileClassEntityFromJson(json);
}
