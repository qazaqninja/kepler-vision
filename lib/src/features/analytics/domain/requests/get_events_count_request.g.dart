// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_events_count_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetEventsCountRequestImpl _$$GetEventsCountRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GetEventsCountRequestImpl(
      schoolId: json['school_id'] as String,
      startDate: json['start_date'] == null
          ? null
          : DateTime.parse(json['start_date'] as String),
      endDate: json['end_date'] == null
          ? null
          : DateTime.parse(json['end_date'] as String),
    );

Map<String, dynamic> _$$GetEventsCountRequestImplToJson(
        _$GetEventsCountRequestImpl instance) =>
    <String, dynamic>{
      'school_id': instance.schoolId,
      'start_date': instance.startDate?.toIso8601String(),
      'end_date': instance.endDate?.toIso8601String(),
    };
