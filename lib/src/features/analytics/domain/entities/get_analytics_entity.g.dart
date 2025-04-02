// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_analytics_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAnalyticsEntityImpl _$$GetAnalyticsEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$GetAnalyticsEntityImpl(
      status: json['status'] as String,
      data: AnalyticEntity.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetAnalyticsEntityImplToJson(
        _$GetAnalyticsEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
