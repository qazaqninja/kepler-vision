import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'patch_event_student_feedback_request.freezed.dart';
part 'patch_event_student_feedback_request.g.dart';

@freezed
class PatchEventStudentFeedbackRequest extends BaseRequest with _$PatchEventStudentFeedbackRequest {
  const factory PatchEventStudentFeedbackRequest({
    required int studentId,
    required String description,
  }) = _PatchEventStudentFeedbackRequest;

  factory PatchEventStudentFeedbackRequest.fromJson(Map<String, dynamic> json) =>
      _$PatchEventStudentFeedbackRequestFromJson(json);
}
