// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventEntityImpl _$$EventEntityImplFromJson(Map<String, dynamic> json) =>
    _$EventEntityImpl(
      id: (json['id'] as num).toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      occuredAt: json['occuredAt'] == null
          ? null
          : DateTime.parse(json['occuredAt'] as String),
      location: json['location'] as String?,
      floor: (json['floor'] as num?)?.toInt(),
      camera: json['camera'] as String?,
      status: json['status'] as String?,
      description: json['description'] as String?,
      type: $enumDecode(_$EventTypeEnumMap, json['type']),
      videoUrl: json['videoUrl'] as String?,
      videoThumbnailPath: json['videoThumbnailPath'] as String?,
      deadline: json['deadline'] == null
          ? null
          : DateTime.parse(json['deadline'] as String),
      processedAt: json['processedAt'] == null
          ? null
          : DateTime.parse(json['processedAt'] as String),
      responsiblePerson: (json['responsiblePerson'] as num?)?.toInt(),
      completedAt: json['completedAt'] == null
          ? null
          : DateTime.parse(json['completedAt'] as String),
      assignedTo: json['assignedTo'] == null
          ? null
          : UserEntity.fromJson(json['assignedTo'] as Map<String, dynamic>),
      involvedPersons: (json['involvedPersons'] as List<dynamic>?)
              ?.map((e) => SuspectEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$EventEntityImplToJson(_$EventEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'occuredAt': instance.occuredAt?.toIso8601String(),
      'location': instance.location,
      'floor': instance.floor,
      'camera': instance.camera,
      'status': instance.status,
      'description': instance.description,
      'type': _$EventTypeEnumMap[instance.type]!,
      'videoUrl': instance.videoUrl,
      'videoThumbnailPath': instance.videoThumbnailPath,
      'deadline': instance.deadline?.toIso8601String(),
      'processedAt': instance.processedAt?.toIso8601String(),
      'responsiblePerson': instance.responsiblePerson,
      'completedAt': instance.completedAt?.toIso8601String(),
      'assignedTo': instance.assignedTo,
      'involvedPersons': instance.involvedPersons,
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
