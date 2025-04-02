// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hot_spots_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HotSpotsEntityImpl _$$HotSpotsEntityImplFromJson(Map<String, dynamic> json) =>
    _$HotSpotsEntityImpl(
      hotSpots:
          (json['hotSpots'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$HotSpotsEntityImplToJson(
        _$HotSpotsEntityImpl instance) =>
    <String, dynamic>{
      'hotSpots': instance.hotSpots,
    };
