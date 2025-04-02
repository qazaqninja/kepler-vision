import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_problem_classes_request.freezed.dart';
part 'get_problem_classes_request.g.dart';

@freezed
class GetProblemClassesRequest with _$GetProblemClassesRequest {
  factory GetProblemClassesRequest({
    @JsonKey(name: 'school_id') required String schoolId,
  }) = _GetProblemClassesRequest;

  factory GetProblemClassesRequest.fromJson(Map<String, dynamic> json) => _$GetProblemClassesRequestFromJson(json);
}
