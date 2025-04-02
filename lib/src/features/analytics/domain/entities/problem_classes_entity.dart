import 'package:freezed_annotation/freezed_annotation.dart';

part 'problem_classes_entity.freezed.dart';
part 'problem_classes_entity.g.dart';

@freezed
class ProblemClassesEntity with _$ProblemClassesEntity {
  factory ProblemClassesEntity({
    required List<String> problemClasses,
  }) = _ProblemClassesEntity;

  factory ProblemClassesEntity.fromJson(Map<String, dynamic> json) => _$ProblemClassesEntityFromJson(json);
}
