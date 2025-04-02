// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patch_event_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatchEventRequestImpl _$$PatchEventRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$PatchEventRequestImpl(
      schoolId: (json['schoolId'] as num).toInt(),
      eventId: (json['eventId'] as num).toInt(),
      notificationPolicy: $enumDecode(
          _$EventFeedbackDestinationEnumMap, json['notificationPolicy']),
      description: json['description'] as String?,
      studentFeedbacks: (json['studentFeedbacks'] as List<dynamic>?)
          ?.map((e) => PatchEventStudentFeedbackRequest.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PatchEventRequestImplToJson(
        _$PatchEventRequestImpl instance) =>
    <String, dynamic>{
      'notificationPolicy':
          _$EventFeedbackDestinationEnumMap[instance.notificationPolicy]!,
      if (instance.description case final value?) 'description': value,
      if (instance.studentFeedbacks case final value?)
        'studentFeedbacks': value,
    };

const _$EventFeedbackDestinationEnumMap = {
  EventFeedbackDestination.student: 'student',
  EventFeedbackDestination.parent: 'parent',
};
