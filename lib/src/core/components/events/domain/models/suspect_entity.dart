import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kepler_vision/src/core/components/events/domain/models/summary_highlight_entity.dart';

part 'suspect_entity.freezed.dart';
part 'suspect_entity.g.dart';

@freezed
class SuspectEntity with _$SuspectEntity {
  factory SuspectEntity({
    required int id,
    String? name,
    String? surname,
    String? className,
    String? photoUrl,
    String? description,
    @Default([]) List<SummaryHighlightEntity> highlights,
  }) = _SuspectEntity;

  factory SuspectEntity.fromJson(Map<String, dynamic> json) =>
      _$SuspectEntityFromJson(json);
}
