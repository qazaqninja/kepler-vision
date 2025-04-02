// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_class_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileClassEntityImpl _$$ProfileClassEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileClassEntityImpl(
      name: json['name'] as String?,
      isClassroomTeacher: json['isClassroomTeacher'] as bool?,
      courseName: json['courseName'] as String?,
    );

Map<String, dynamic> _$$ProfileClassEntityImplToJson(
        _$ProfileClassEntityImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'isClassroomTeacher': instance.isClassroomTeacher,
      'courseName': instance.courseName,
    };
