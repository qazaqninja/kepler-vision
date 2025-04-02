import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kepler_vision/src/core/components/filter/domain/models/date_filter.dart';
import 'package:kepler_vision/src/features/class/domain/entity/class_entity.dart';

part 'teacher_review_state.freezed.dart';

@freezed
class TeacherReviewState with _$TeacherReviewState {
  factory TeacherReviewState({
    List<ClassEntity>? events,
    required DateFilter analyticsDateFilter,
  }) = _TeacherReviewState;
}
