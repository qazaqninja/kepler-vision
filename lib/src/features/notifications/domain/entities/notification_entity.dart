import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kepler_vision/src/core/components/events/domain/models/enums/event_type.dart';

part 'notification_entity.freezed.dart';
part 'notification_entity.g.dart';

@Freezed(unionKey: 'eventType')
sealed class NotificationEntity with _$NotificationEntity {
  // Base notification
  @FreezedUnionValue('default')
  const factory NotificationEntity({
    required int id,
    required DateTime timestamp,
    required String role,
    required EventType eventType,
  }) = _NotificationEntity;

  // AttendanceEvent
  // @FreezedUnionValue('attendance')
  // const factory NotificationEntity.attendance({
  //   required int id,
  //   required DateTime timestamp,
  //   required String role,
  //   required String eventType,
  //   required String studentName,
  // }) = AttendanceNotification;

  // ConflictEvent
  @FreezedUnionValue('conflict') // DONE
  const factory NotificationEntity.conflict({
    required int id,
    required DateTime timestamp,
    required String role,
    required EventType eventType,
    String? studentName,
    int? studentCount,
    String? className,
    int? floor,
    String? location,
  }) = ConflictNotification;

  // Smoking (new)
  @FreezedUnionValue('smoking') // DONE
  const factory NotificationEntity.smoking({
    required int id,
    required DateTime timestamp,
    required String role,
    required EventType eventType,
    int? studentCount,
    String? className,
  }) = SmokingNotification;

  @FreezedUnionValue('cheating') // DONE
  const factory NotificationEntity.cheating({
    required int id,
    required DateTime timestamp,
    required String role,
    required EventType eventType,
    String? studentName,
    String? className,
  }) = CheatingNotification;
  // ScheduleUpdateEvent
  @FreezedUnionValue('schedule_update') // DONE
  const factory NotificationEntity.scheduleUpdate({
    required int id,
    required DateTime timestamp,
    required String role,
    required EventType eventType,
    @DateTimeConverter() required DateTime date,
  }) = ScheduleUpdateNotification;

  // ClassEvent
  // @FreezedUnionValue('class')
  // const factory NotificationEntity.classEvent({
  //   required int id,
  //   required DateTime timestamp,
  //   required String role,
  //   required String eventType,
  //   required String className,
  // }) = ClassNotification;

  // ClassEventWithStudentCount
  // @FreezedUnionValue('class_with_count')
  // const factory NotificationEntity.classWithStudentCount({
  //   required int id,
  //   required DateTime timestamp,
  //   required String role,
  //   required String eventType,
  //   required String className,
  //   required int studentCount,
  // }) = ClassWithStudentCountNotification;

  // ConflictEventForPsychologist
  // @FreezedUnionValue('conflict_for_psychologist')
  // const factory NotificationEntity.conflictForPsychologist({
  //   required int id,
  //   required DateTime timestamp,
  //   required String role,
  //   required String eventType,
  //   required int floor,
  //   required String location,
  // }) = ConflictForPsychologistNotification;

  @FreezedUnionValue('departure')
  const factory NotificationEntity.departure({
    required int id,
    required DateTime timestamp,
    required String role,
    required EventType eventType,
    required String studentName,
  }) = DepartureNotification;

  // Arrival (new type based on your UI code)
  @FreezedUnionValue('arrival') // DONE
  const factory NotificationEntity.arrival({
    required int id,
    required DateTime timestamp,
    required String role,
    required EventType eventType,
    required String studentName,
  }) = ArrivalNotification;
  // RedirectedConflictEvent
  @FreezedUnionValue('redirected_conflict') // DONE
  const factory NotificationEntity.redirectedConflict({
    required int id,
    required DateTime timestamp,
    required String role,
    required EventType eventType,
    required String studentName,
    required int eventNumber,
  }) = RedirectedConflictNotification;

  factory NotificationEntity.fromJson(Map<String, dynamic> json) => _$NotificationEntityFromJson(json);
}

class DateTimeConverter implements JsonConverter<DateTime, String> {
  const DateTimeConverter();

  @override
  DateTime fromJson(String json) => DateTime.parse(json);

  @override
  String toJson(DateTime object) => object.toIso8601String();
}
