// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suspect_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SuspectEntityImpl _$$SuspectEntityImplFromJson(Map<String, dynamic> json) =>
    _$SuspectEntityImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      surname: json['surname'] as String?,
      className: json['className'] as String?,
      photoUrl: json['photoUrl'] as String?,
      description: json['description'] as String?,
      highlights: (json['highlights'] as List<dynamic>?)
              ?.map((e) =>
                  SummaryHighlightEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SuspectEntityImplToJson(_$SuspectEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'surname': instance.surname,
      'className': instance.className,
      'photoUrl': instance.photoUrl,
      'description': instance.description,
      'highlights': instance.highlights,
    };
