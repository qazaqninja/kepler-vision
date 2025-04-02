// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_event_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetEventRequestImpl _$$GetEventRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GetEventRequestImpl(
      schoolId: (json['schoolId'] as num).toInt(),
      eventId: (json['eventId'] as num).toInt(),
    );

Map<String, dynamic> _$$GetEventRequestImplToJson(
        _$GetEventRequestImpl instance) =>
    <String, dynamic>{
      'schoolId': instance.schoolId,
      'eventId': instance.eventId,
    };
