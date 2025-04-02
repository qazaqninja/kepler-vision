import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kepler_vision/src/features/analytics/domain/entities/hot_spots_entity.dart';

part 'get_hot_spots_entity.freezed.dart';
part 'get_hot_spots_entity.g.dart';

@freezed
class GetHotSpotsEntity with _$GetHotSpotsEntity {
  factory GetHotSpotsEntity({
    required String status,
    // required Map<String, dynamic> meta,
    required HotSpotsEntity? data,
  }) = _GetHotSpotsEntity;

  factory GetHotSpotsEntity.fromJson(Map<String, dynamic> json) => _$GetHotSpotsEntityFromJson(json);
}
