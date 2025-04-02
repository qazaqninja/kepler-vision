// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_student_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetStudentEntityImpl _$$GetStudentEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$GetStudentEntityImpl(
      status: json['status'] as String,
      meta: json['meta'] as Map<String, dynamic>? ?? const {},
      data: (json['data'] as List<dynamic>)
          .map((e) => StudentEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetStudentEntityImplToJson(
        _$GetStudentEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'meta': instance.meta,
      'data': instance.data,
    };
