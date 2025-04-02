import 'package:freezed_annotation/freezed_annotation.dart';

part 'hot_spots_entity.freezed.dart';
part 'hot_spots_entity.g.dart';

@freezed
class HotSpotsEntity with _$HotSpotsEntity {
  factory HotSpotsEntity({
    required List<String> hotSpots,
  }) = _HotSpotsEntity;

  factory HotSpotsEntity.fromJson(Map<String, dynamic> json) => _$HotSpotsEntityFromJson(json);
}
