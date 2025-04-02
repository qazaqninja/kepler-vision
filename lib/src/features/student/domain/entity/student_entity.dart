import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_entity.freezed.dart';
part 'student_entity.g.dart';

@freezed
class StudentEntity with _$StudentEntity {
  factory StudentEntity({
    required int id,
    required String fullName,
    required String base64Image,
    required String className,
  }) = _StudentEntity;
  factory StudentEntity.fromJson(Map<String, dynamic> json) => _$StudentEntityFromJson(json);
}
