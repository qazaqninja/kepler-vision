import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kepler_vision/src/core/components/events/domain/models/enums/event_feedback_destination.dart';

import '../../../../core/base/base_models/base_request.dart';
import 'patch_event_student_feedback_request.dart';

part 'patch_event_request.freezed.dart';
part 'patch_event_request.g.dart';

@freezed
class PatchEventRequest extends BaseRequest with _$PatchEventRequest {
  @JsonSerializable(includeIfNull: false)
  const factory PatchEventRequest({
    @JsonKey(includeToJson: false)
    required int schoolId,
    @JsonKey(includeToJson: false)
    required int eventId,
    required EventFeedbackDestination notificationPolicy,
    String? description,
    List<PatchEventStudentFeedbackRequest>? studentFeedbacks,
  }) = _PatchEventRequest;

  factory PatchEventRequest.fromJson(Map<String, dynamic> json) =>
      _$PatchEventRequestFromJson(json);
}
