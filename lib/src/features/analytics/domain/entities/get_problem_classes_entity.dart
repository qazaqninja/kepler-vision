import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kepler_vision/src/features/analytics/domain/entities/problem_classes_entity.dart';

part 'get_problem_classes_entity.freezed.dart';
part 'get_problem_classes_entity.g.dart';

@freezed
class GetProblemClassesEntity with _$GetProblemClassesEntity {
  factory GetProblemClassesEntity({
    required String status,
    required Map<String, dynamic> meta,
    required ProblemClassesEntity? data,
  }) = _GetProblemClassesEntity;

  factory GetProblemClassesEntity.fromJson(Map<String, dynamic> json) => _$GetProblemClassesEntityFromJson(json);
}
