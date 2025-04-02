import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'get_student_request.freezed.dart';
part 'get_student_request.g.dart';

@freezed
class GetStudentRequest extends BaseRequest with _$GetStudentRequest {
  const factory GetStudentRequest({
    @JsonKey(name: 'school_id') required String schoolId,
  }) = _GetStudentRequest;

  factory GetStudentRequest.fromJson(Map<String, dynamic> json) => _$GetStudentRequestFromJson(json);
}
