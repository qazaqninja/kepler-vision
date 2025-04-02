import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kepler_vision/src/core/components/events/domain/models/enums/event_type.dart';
import 'package:kepler_vision/src/core/components/filter/domain/models/date_filter.dart';

part 'camera_filter.freezed.dart';

@freezed
class CameraFilter with _$CameraFilter {
  factory CameraFilter({
    required DateFilter date,
    @Default({}) Set<EventType> eventTypes,
  }) = _CameraFilter;
}
