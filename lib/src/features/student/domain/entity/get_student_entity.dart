import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kepler_vision/src/features/student/domain/entity/student_entity.dart';

part 'get_student_entity.freezed.dart';
part 'get_student_entity.g.dart';

@freezed
class GetStudentEntity with _$GetStudentEntity {
  factory GetStudentEntity({
    required String status,
    @Default({}) Map<String, dynamic> meta,
    required List<StudentEntity> data,
  }) = _GetStudentEntity;
  factory GetStudentEntity.fromJson(Map<String, dynamic> json) => _$GetStudentEntityFromJson(json);
}
