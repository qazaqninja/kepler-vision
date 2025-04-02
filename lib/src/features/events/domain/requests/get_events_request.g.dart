// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_events_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetEventsRequestImpl _$$GetEventsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GetEventsRequestImpl(
      schoolId: (json['schoolId'] as num).toInt(),
      limit: (json['limit'] as num?)?.toInt(),
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      status: $enumDecodeNullable(_$EventStatusEnumMap, json['status']),
      processedStatus: json['processedStatus'] as String?,
    );

Map<String, dynamic> _$$GetEventsRequestImplToJson(
        _$GetEventsRequestImpl instance) =>
    <String, dynamic>{
      'schoolId': instance.schoolId,
      'limit': instance.limit,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'status': _$EventStatusEnumMap[instance.status],
      'processedStatus': instance.processedStatus,
    };

const _$EventStatusEnumMap = {
  EventStatus.unprocessed: 'unprocessed',
  EventStatus.processed: 'processed',
};
