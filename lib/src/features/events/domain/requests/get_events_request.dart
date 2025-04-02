import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kepler_vision/src/features/events/domain/models/enums/event_status.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'get_events_request.freezed.dart';
part 'get_events_request.g.dart';

@freezed
class GetEventsRequest extends BaseRequest with _$GetEventsRequest {
  const factory GetEventsRequest({
    required int schoolId,
    int? limit,
    DateTime? startDate,
    DateTime? endDate,
    EventStatus? status,
    String? processedStatus,
  }) = _GetEventsRequest;

  factory GetEventsRequest.fromJson(Map<String, dynamic> json) =>
      _$GetEventsRequestFromJson(json);
}
