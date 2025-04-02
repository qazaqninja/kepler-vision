// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patch_event_student_feedback_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatchEventStudentFeedbackRequestImpl
    _$$PatchEventStudentFeedbackRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$PatchEventStudentFeedbackRequestImpl(
          studentId: (json['studentId'] as num).toInt(),
          description: json['description'] as String,
        );

Map<String, dynamic> _$$PatchEventStudentFeedbackRequestImplToJson(
        _$PatchEventStudentFeedbackRequestImpl instance) =>
    <String, dynamic>{
      'studentId': instance.studentId,
      'description': instance.description,
    };
