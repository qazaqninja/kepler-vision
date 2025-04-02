import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'get_notifications_request.freezed.dart';
part 'get_notifications_request.g.dart';

@freezed
class GetNotificationsRequest extends BaseRequest with _$GetNotificationsRequest {
  const factory GetNotificationsRequest({
    required String role,
    String? cursor,
    String? limit,
  }) = _GetNotificationsRequest;

  factory GetNotificationsRequest.fromJson(Map<String, dynamic> json) => _$GetNotificationsRequestFromJson(json);
}
