import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_hot_spots_request.freezed.dart';
part 'get_hot_spots_request.g.dart';

@freezed
class GetHotSpotsRequest with _$GetHotSpotsRequest {
  factory GetHotSpotsRequest({
    @JsonKey(name: 'school_id') required String schoolId,
  }) = _GetHotSpotsRequest;

  factory GetHotSpotsRequest.fromJson(Map<String, dynamic> json) => _$GetHotSpotsRequestFromJson(json);
}
