// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytic_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnalyticEntityImpl _$$AnalyticEntityImplFromJson(Map<String, dynamic> json) =>
    _$AnalyticEntityImpl(
      conflictCount: (json['conflictCount'] as num).toInt(),
      smokingCount: (json['smokingCount'] as num).toInt(),
      cheatingCount: (json['cheatingCount'] as num).toInt(),
    );

Map<String, dynamic> _$$AnalyticEntityImplToJson(
        _$AnalyticEntityImpl instance) =>
    <String, dynamic>{
      'conflictCount': instance.conflictCount,
      'smokingCount': instance.smokingCount,
      'cheatingCount': instance.cheatingCount,
    };
