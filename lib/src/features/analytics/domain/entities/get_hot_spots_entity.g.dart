// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_hot_spots_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetHotSpotsEntityImpl _$$GetHotSpotsEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$GetHotSpotsEntityImpl(
      status: json['status'] as String,
      data: json['data'] == null
          ? null
          : HotSpotsEntity.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetHotSpotsEntityImplToJson(
        _$GetHotSpotsEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
