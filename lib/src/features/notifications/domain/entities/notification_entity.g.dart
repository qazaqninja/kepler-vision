// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationEntityImpl _$$NotificationEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationEntityImpl(
      id: (json['id'] as num).toInt(),
      timestamp: DateTime.parse(json['timestamp'] as String),
      role: json['role'] as String,
      eventType: $enumDecode(_$EventTypeEnumMap, json['eventType']),
    );

Map<String, dynamic> _$$NotificationEntityImplToJson(
        _$NotificationEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'timestamp': instance.timestamp.toIso8601String(),
      'role': instance.role,
      'eventType': _$EventTypeEnumMap[instance.eventType]!,
    };

const _$EventTypeEnumMap = {
  EventType.conflict: 'conflict',
  EventType.smoking: 'smoking',
  EventType.cheating: 'cheating',
  EventType.schedule_update: 'schedule_update',
  EventType.departure: 'departure',
  EventType.redirected_conflict: 'redirected_conflict',
  EventType.arrival: 'arrival',
};

_$ConflictNotificationImpl _$$ConflictNotificationImplFromJson(
        Map<String, dynamic> json) =>
    _$ConflictNotificationImpl(
      id: (json['id'] as num).toInt(),
      timestamp: DateTime.parse(json['timestamp'] as String),
      role: json['role'] as String,
      eventType: $enumDecode(_$EventTypeEnumMap, json['eventType']),
      studentName: json['studentName'] as String?,
      studentCount: (json['studentCount'] as num?)?.toInt(),
      className: json['className'] as String?,
      floor: (json['floor'] as num?)?.toInt(),
      location: json['location'] as String?,
    );

Map<String, dynamic> _$$ConflictNotificationImplToJson(
        _$ConflictNotificationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'timestamp': instance.timestamp.toIso8601String(),
      'role': instance.role,
      'eventType': _$EventTypeEnumMap[instance.eventType]!,
      'studentName': instance.studentName,
      'studentCount': instance.studentCount,
      'className': instance.className,
      'floor': instance.floor,
      'location': instance.location,
    };

_$SmokingNotificationImpl _$$SmokingNotificationImplFromJson(
        Map<String, dynamic> json) =>
    _$SmokingNotificationImpl(
      id: (json['id'] as num).toInt(),
      timestamp: DateTime.parse(json['timestamp'] as String),
      role: json['role'] as String,
      eventType: $enumDecode(_$EventTypeEnumMap, json['eventType']),
      studentCount: (json['studentCount'] as num?)?.toInt(),
      className: json['className'] as String?,
    );

Map<String, dynamic> _$$SmokingNotificationImplToJson(
        _$SmokingNotificationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'timestamp': instance.timestamp.toIso8601String(),
      'role': instance.role,
      'eventType': _$EventTypeEnumMap[instance.eventType]!,
      'studentCount': instance.studentCount,
      'className': instance.className,
    };

_$CheatingNotificationImpl _$$CheatingNotificationImplFromJson(
        Map<String, dynamic> json) =>
    _$CheatingNotificationImpl(
      id: (json['id'] as num).toInt(),
      timestamp: DateTime.parse(json['timestamp'] as String),
      role: json['role'] as String,
      eventType: $enumDecode(_$EventTypeEnumMap, json['eventType']),
      studentName: json['studentName'] as String?,
      className: json['className'] as String?,
    );

Map<String, dynamic> _$$CheatingNotificationImplToJson(
        _$CheatingNotificationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'timestamp': instance.timestamp.toIso8601String(),
      'role': instance.role,
      'eventType': _$EventTypeEnumMap[instance.eventType]!,
      'studentName': instance.studentName,
      'className': instance.className,
    };

_$ScheduleUpdateNotificationImpl _$$ScheduleUpdateNotificationImplFromJson(
        Map<String, dynamic> json) =>
    _$ScheduleUpdateNotificationImpl(
      id: (json['id'] as num).toInt(),
      timestamp: DateTime.parse(json['timestamp'] as String),
      role: json['role'] as String,
      eventType: $enumDecode(_$EventTypeEnumMap, json['eventType']),
      date: const DateTimeConverter().fromJson(json['date'] as String),
    );

Map<String, dynamic> _$$ScheduleUpdateNotificationImplToJson(
        _$ScheduleUpdateNotificationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'timestamp': instance.timestamp.toIso8601String(),
      'role': instance.role,
      'eventType': _$EventTypeEnumMap[instance.eventType]!,
      'date': const DateTimeConverter().toJson(instance.date),
    };

_$DepartureNotificationImpl _$$DepartureNotificationImplFromJson(
        Map<String, dynamic> json) =>
    _$DepartureNotificationImpl(
      id: (json['id'] as num).toInt(),
      timestamp: DateTime.parse(json['timestamp'] as String),
      role: json['role'] as String,
      eventType: $enumDecode(_$EventTypeEnumMap, json['eventType']),
      studentName: json['studentName'] as String,
    );

Map<String, dynamic> _$$DepartureNotificationImplToJson(
        _$DepartureNotificationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'timestamp': instance.timestamp.toIso8601String(),
      'role': instance.role,
      'eventType': _$EventTypeEnumMap[instance.eventType]!,
      'studentName': instance.studentName,
    };

_$ArrivalNotificationImpl _$$ArrivalNotificationImplFromJson(
        Map<String, dynamic> json) =>
    _$ArrivalNotificationImpl(
      id: (json['id'] as num).toInt(),
      timestamp: DateTime.parse(json['timestamp'] as String),
      role: json['role'] as String,
      eventType: $enumDecode(_$EventTypeEnumMap, json['eventType']),
      studentName: json['studentName'] as String,
    );

Map<String, dynamic> _$$ArrivalNotificationImplToJson(
        _$ArrivalNotificationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'timestamp': instance.timestamp.toIso8601String(),
      'role': instance.role,
      'eventType': _$EventTypeEnumMap[instance.eventType]!,
      'studentName': instance.studentName,
    };

_$RedirectedConflictNotificationImpl
    _$$RedirectedConflictNotificationImplFromJson(Map<String, dynamic> json) =>
        _$RedirectedConflictNotificationImpl(
          id: (json['id'] as num).toInt(),
          timestamp: DateTime.parse(json['timestamp'] as String),
          role: json['role'] as String,
          eventType: $enumDecode(_$EventTypeEnumMap, json['eventType']),
          studentName: json['studentName'] as String,
          eventNumber: (json['eventNumber'] as num).toInt(),
        );

Map<String, dynamic> _$$RedirectedConflictNotificationImplToJson(
        _$RedirectedConflictNotificationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'timestamp': instance.timestamp.toIso8601String(),
      'role': instance.role,
      'eventType': _$EventTypeEnumMap[instance.eventType]!,
      'studentName': instance.studentName,
      'eventNumber': instance.eventNumber,
    };
