// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'problem_classes_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProblemClassesEntityImpl _$$ProblemClassesEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ProblemClassesEntityImpl(
      problemClasses: (json['problemClasses'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ProblemClassesEntityImplToJson(
        _$ProblemClassesEntityImpl instance) =>
    <String, dynamic>{
      'problemClasses': instance.problemClasses,
    };
