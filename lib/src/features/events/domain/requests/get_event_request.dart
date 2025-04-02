import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'get_event_request.freezed.dart';
part 'get_event_request.g.dart';

@freezed
class GetEventRequest extends BaseRequest with _$GetEventRequest {
  const factory GetEventRequest({
    required int schoolId,
    required int eventId,
  }) = _GetEventRequest;

  factory GetEventRequest.fromJson(Map<String, dynamic> json) =>
      _$GetEventRequestFromJson(json);
}
