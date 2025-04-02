import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kepler_vision/src/features/detection/domain/entity/detection_date_entity.dart';

part 'detection_state.freezed.dart';

@freezed
class DetectionState with _$DetectionState {
  factory DetectionState({
    List<DetectionDateEntity>? detection,
  }) = _DetectionState;
}
