// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_problem_classes_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetProblemClassesEntityImpl _$$GetProblemClassesEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$GetProblemClassesEntityImpl(
      status: json['status'] as String,
      meta: json['meta'] as Map<String, dynamic>,
      data: json['data'] == null
          ? null
          : ProblemClassesEntity.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetProblemClassesEntityImplToJson(
        _$GetProblemClassesEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'meta': instance.meta,
      'data': instance.data,
    };
