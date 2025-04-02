import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kepler_vision/src/core/components/events/domain/models/enums/event_type.dart';
import 'package:kepler_vision/src/core/components/events/domain/models/suspect_entity.dart';
import 'package:kepler_vision/src/core/components/users/domain/models/user_entity.dart';

part 'event_entity.freezed.dart';
part 'event_entity.g.dart';

@freezed
class EventEntity with _$EventEntity {
  factory EventEntity({
    required int id,
    DateTime? createdAt,
    DateTime? expiresAt,
    DateTime? occuredAt,
    String? location,
    int? floor,
    String? camera,
    String? status,
    String? description,
    required EventType type,
    String? videoUrl,
    String? videoThumbnailPath,
    DateTime? deadline,
    DateTime? processedAt,
    int? responsiblePerson,
    DateTime? completedAt,
    UserEntity? assignedTo,
    @Default([]) List<SuspectEntity> involvedPersons,
  }) = _EventEntity;

  factory EventEntity.fromJson(Map<String, dynamic> json) => _$EventEntityFromJson(json);
}
