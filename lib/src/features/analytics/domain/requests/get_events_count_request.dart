import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'get_events_count_request.freezed.dart';
part 'get_events_count_request.g.dart';

@freezed
class GetEventsCountRequest extends BaseRequest with _$GetEventsCountRequest {
  const factory GetEventsCountRequest({
    @JsonKey(name: 'school_id') required String schoolId,
    @JsonKey(name: 'start_date') DateTime? startDate,
    @JsonKey(name: 'end_date') DateTime? endDate,
  }) = _GetEventsCountRequest;

  factory GetEventsCountRequest.fromJson(Map<String, dynamic> json) => _$GetEventsCountRequestFromJson(json);
}
