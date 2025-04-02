// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentEntityImpl _$$StudentEntityImplFromJson(Map<String, dynamic> json) =>
    _$StudentEntityImpl(
      id: (json['id'] as num).toInt(),
      fullName: json['fullName'] as String,
      base64Image: json['base64Image'] as String,
      className: json['className'] as String,
    );

Map<String, dynamic> _$$StudentEntityImplToJson(_$StudentEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'base64Image': instance.base64Image,
      'className': instance.className,
    };
