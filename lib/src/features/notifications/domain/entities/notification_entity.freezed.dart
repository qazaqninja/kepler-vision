// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationEntity _$NotificationEntityFromJson(Map<String, dynamic> json) {
  switch (json['eventType']) {
    case 'default':
      return _NotificationEntity.fromJson(json);
    case 'conflict':
      return ConflictNotification.fromJson(json);
    case 'smoking':
      return SmokingNotification.fromJson(json);
    case 'cheating':
      return CheatingNotification.fromJson(json);
    case 'schedule_update':
      return ScheduleUpdateNotification.fromJson(json);
    case 'departure':
      return DepartureNotification.fromJson(json);
    case 'arrival':
      return ArrivalNotification.fromJson(json);
    case 'redirected_conflict':
      return RedirectedConflictNotification.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'eventType', 'NotificationEntity',
          'Invalid union type "${json['eventType']}"!');
  }
}

/// @nodoc
mixin _$NotificationEntity {
  int get id => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  EventType get eventType => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int id, DateTime timestamp, String role, EventType eventType)
        $default, {
    required TResult Function(
            int id,
            DateTime timestamp,
            String role,
            EventType eventType,
            String? studentName,
            int? studentCount,
            String? className,
            int? floor,
            String? location)
        conflict,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, int? studentCount, String? className)
        smoking,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String? studentName, String? className)
        cheating,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, @DateTimeConverter() DateTime date)
        scheduleUpdate,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)
        departure,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)
        arrival,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName, int eventNumber)
        redirectedConflict,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int id, DateTime timestamp, String role, EventType eventType)?
        $default, {
    TResult? Function(
            int id,
            DateTime timestamp,
            String role,
            EventType eventType,
            String? studentName,
            int? studentCount,
            String? className,
            int? floor,
            String? location)?
        conflict,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, int? studentCount, String? className)?
        smoking,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, String? studentName, String? className)?
        cheating,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, @DateTimeConverter() DateTime date)?
        scheduleUpdate,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)?
        departure,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)?
        arrival,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName, int eventNumber)?
        redirectedConflict,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int id, DateTime timestamp, String role, EventType eventType)?
        $default, {
    TResult Function(
            int id,
            DateTime timestamp,
            String role,
            EventType eventType,
            String? studentName,
            int? studentCount,
            String? className,
            int? floor,
            String? location)?
        conflict,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, int? studentCount, String? className)?
        smoking,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String? studentName, String? className)?
        cheating,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, @DateTimeConverter() DateTime date)?
        scheduleUpdate,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)?
        departure,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)?
        arrival,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName, int eventNumber)?
        redirectedConflict,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NotificationEntity value) $default, {
    required TResult Function(ConflictNotification value) conflict,
    required TResult Function(SmokingNotification value) smoking,
    required TResult Function(CheatingNotification value) cheating,
    required TResult Function(ScheduleUpdateNotification value) scheduleUpdate,
    required TResult Function(DepartureNotification value) departure,
    required TResult Function(ArrivalNotification value) arrival,
    required TResult Function(RedirectedConflictNotification value)
        redirectedConflict,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NotificationEntity value)? $default, {
    TResult? Function(ConflictNotification value)? conflict,
    TResult? Function(SmokingNotification value)? smoking,
    TResult? Function(CheatingNotification value)? cheating,
    TResult? Function(ScheduleUpdateNotification value)? scheduleUpdate,
    TResult? Function(DepartureNotification value)? departure,
    TResult? Function(ArrivalNotification value)? arrival,
    TResult? Function(RedirectedConflictNotification value)? redirectedConflict,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NotificationEntity value)? $default, {
    TResult Function(ConflictNotification value)? conflict,
    TResult Function(SmokingNotification value)? smoking,
    TResult Function(CheatingNotification value)? cheating,
    TResult Function(ScheduleUpdateNotification value)? scheduleUpdate,
    TResult Function(DepartureNotification value)? departure,
    TResult Function(ArrivalNotification value)? arrival,
    TResult Function(RedirectedConflictNotification value)? redirectedConflict,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this NotificationEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationEntityCopyWith<NotificationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationEntityCopyWith<$Res> {
  factory $NotificationEntityCopyWith(
          NotificationEntity value, $Res Function(NotificationEntity) then) =
      _$NotificationEntityCopyWithImpl<$Res, NotificationEntity>;
  @useResult
  $Res call({int id, DateTime timestamp, String role, EventType eventType});
}

/// @nodoc
class _$NotificationEntityCopyWithImpl<$Res, $Val extends NotificationEntity>
    implements $NotificationEntityCopyWith<$Res> {
  _$NotificationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp = null,
    Object? role = null,
    Object? eventType = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as EventType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationEntityImplCopyWith<$Res>
    implements $NotificationEntityCopyWith<$Res> {
  factory _$$NotificationEntityImplCopyWith(_$NotificationEntityImpl value,
          $Res Function(_$NotificationEntityImpl) then) =
      __$$NotificationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, DateTime timestamp, String role, EventType eventType});
}

/// @nodoc
class __$$NotificationEntityImplCopyWithImpl<$Res>
    extends _$NotificationEntityCopyWithImpl<$Res, _$NotificationEntityImpl>
    implements _$$NotificationEntityImplCopyWith<$Res> {
  __$$NotificationEntityImplCopyWithImpl(_$NotificationEntityImpl _value,
      $Res Function(_$NotificationEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp = null,
    Object? role = null,
    Object? eventType = null,
  }) {
    return _then(_$NotificationEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as EventType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationEntityImpl implements _NotificationEntity {
  const _$NotificationEntityImpl(
      {required this.id,
      required this.timestamp,
      required this.role,
      required this.eventType});

  factory _$NotificationEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationEntityImplFromJson(json);

  @override
  final int id;
  @override
  final DateTime timestamp;
  @override
  final String role;
  @override
  final EventType eventType;

  @override
  String toString() {
    return 'NotificationEntity(id: $id, timestamp: $timestamp, role: $role, eventType: $eventType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, timestamp, role, eventType);

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationEntityImplCopyWith<_$NotificationEntityImpl> get copyWith =>
      __$$NotificationEntityImplCopyWithImpl<_$NotificationEntityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int id, DateTime timestamp, String role, EventType eventType)
        $default, {
    required TResult Function(
            int id,
            DateTime timestamp,
            String role,
            EventType eventType,
            String? studentName,
            int? studentCount,
            String? className,
            int? floor,
            String? location)
        conflict,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, int? studentCount, String? className)
        smoking,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String? studentName, String? className)
        cheating,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, @DateTimeConverter() DateTime date)
        scheduleUpdate,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)
        departure,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)
        arrival,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName, int eventNumber)
        redirectedConflict,
  }) {
    return $default(id, timestamp, role, eventType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int id, DateTime timestamp, String role, EventType eventType)?
        $default, {
    TResult? Function(
            int id,
            DateTime timestamp,
            String role,
            EventType eventType,
            String? studentName,
            int? studentCount,
            String? className,
            int? floor,
            String? location)?
        conflict,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, int? studentCount, String? className)?
        smoking,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, String? studentName, String? className)?
        cheating,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, @DateTimeConverter() DateTime date)?
        scheduleUpdate,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)?
        departure,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)?
        arrival,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName, int eventNumber)?
        redirectedConflict,
  }) {
    return $default?.call(id, timestamp, role, eventType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int id, DateTime timestamp, String role, EventType eventType)?
        $default, {
    TResult Function(
            int id,
            DateTime timestamp,
            String role,
            EventType eventType,
            String? studentName,
            int? studentCount,
            String? className,
            int? floor,
            String? location)?
        conflict,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, int? studentCount, String? className)?
        smoking,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String? studentName, String? className)?
        cheating,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, @DateTimeConverter() DateTime date)?
        scheduleUpdate,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)?
        departure,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)?
        arrival,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName, int eventNumber)?
        redirectedConflict,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(id, timestamp, role, eventType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NotificationEntity value) $default, {
    required TResult Function(ConflictNotification value) conflict,
    required TResult Function(SmokingNotification value) smoking,
    required TResult Function(CheatingNotification value) cheating,
    required TResult Function(ScheduleUpdateNotification value) scheduleUpdate,
    required TResult Function(DepartureNotification value) departure,
    required TResult Function(ArrivalNotification value) arrival,
    required TResult Function(RedirectedConflictNotification value)
        redirectedConflict,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NotificationEntity value)? $default, {
    TResult? Function(ConflictNotification value)? conflict,
    TResult? Function(SmokingNotification value)? smoking,
    TResult? Function(CheatingNotification value)? cheating,
    TResult? Function(ScheduleUpdateNotification value)? scheduleUpdate,
    TResult? Function(DepartureNotification value)? departure,
    TResult? Function(ArrivalNotification value)? arrival,
    TResult? Function(RedirectedConflictNotification value)? redirectedConflict,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NotificationEntity value)? $default, {
    TResult Function(ConflictNotification value)? conflict,
    TResult Function(SmokingNotification value)? smoking,
    TResult Function(CheatingNotification value)? cheating,
    TResult Function(ScheduleUpdateNotification value)? scheduleUpdate,
    TResult Function(DepartureNotification value)? departure,
    TResult Function(ArrivalNotification value)? arrival,
    TResult Function(RedirectedConflictNotification value)? redirectedConflict,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationEntityImplToJson(
      this,
    );
  }
}

abstract class _NotificationEntity implements NotificationEntity {
  const factory _NotificationEntity(
      {required final int id,
      required final DateTime timestamp,
      required final String role,
      required final EventType eventType}) = _$NotificationEntityImpl;

  factory _NotificationEntity.fromJson(Map<String, dynamic> json) =
      _$NotificationEntityImpl.fromJson;

  @override
  int get id;
  @override
  DateTime get timestamp;
  @override
  String get role;
  @override
  EventType get eventType;

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationEntityImplCopyWith<_$NotificationEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConflictNotificationImplCopyWith<$Res>
    implements $NotificationEntityCopyWith<$Res> {
  factory _$$ConflictNotificationImplCopyWith(_$ConflictNotificationImpl value,
          $Res Function(_$ConflictNotificationImpl) then) =
      __$$ConflictNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      DateTime timestamp,
      String role,
      EventType eventType,
      String? studentName,
      int? studentCount,
      String? className,
      int? floor,
      String? location});
}

/// @nodoc
class __$$ConflictNotificationImplCopyWithImpl<$Res>
    extends _$NotificationEntityCopyWithImpl<$Res, _$ConflictNotificationImpl>
    implements _$$ConflictNotificationImplCopyWith<$Res> {
  __$$ConflictNotificationImplCopyWithImpl(_$ConflictNotificationImpl _value,
      $Res Function(_$ConflictNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp = null,
    Object? role = null,
    Object? eventType = null,
    Object? studentName = freezed,
    Object? studentCount = freezed,
    Object? className = freezed,
    Object? floor = freezed,
    Object? location = freezed,
  }) {
    return _then(_$ConflictNotificationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as EventType,
      studentName: freezed == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String?,
      studentCount: freezed == studentCount
          ? _value.studentCount
          : studentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      className: freezed == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String?,
      floor: freezed == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConflictNotificationImpl implements ConflictNotification {
  const _$ConflictNotificationImpl(
      {required this.id,
      required this.timestamp,
      required this.role,
      required this.eventType,
      this.studentName,
      this.studentCount,
      this.className,
      this.floor,
      this.location});

  factory _$ConflictNotificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConflictNotificationImplFromJson(json);

  @override
  final int id;
  @override
  final DateTime timestamp;
  @override
  final String role;
  @override
  final EventType eventType;
  @override
  final String? studentName;
  @override
  final int? studentCount;
  @override
  final String? className;
  @override
  final int? floor;
  @override
  final String? location;

  @override
  String toString() {
    return 'NotificationEntity.conflict(id: $id, timestamp: $timestamp, role: $role, eventType: $eventType, studentName: $studentName, studentCount: $studentCount, className: $className, floor: $floor, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConflictNotificationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.studentName, studentName) ||
                other.studentName == studentName) &&
            (identical(other.studentCount, studentCount) ||
                other.studentCount == studentCount) &&
            (identical(other.className, className) ||
                other.className == className) &&
            (identical(other.floor, floor) || other.floor == floor) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, timestamp, role, eventType,
      studentName, studentCount, className, floor, location);

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConflictNotificationImplCopyWith<_$ConflictNotificationImpl>
      get copyWith =>
          __$$ConflictNotificationImplCopyWithImpl<_$ConflictNotificationImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int id, DateTime timestamp, String role, EventType eventType)
        $default, {
    required TResult Function(
            int id,
            DateTime timestamp,
            String role,
            EventType eventType,
            String? studentName,
            int? studentCount,
            String? className,
            int? floor,
            String? location)
        conflict,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, int? studentCount, String? className)
        smoking,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String? studentName, String? className)
        cheating,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, @DateTimeConverter() DateTime date)
        scheduleUpdate,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)
        departure,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)
        arrival,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName, int eventNumber)
        redirectedConflict,
  }) {
    return conflict(id, timestamp, role, eventType, studentName, studentCount,
        className, floor, location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int id, DateTime timestamp, String role, EventType eventType)?
        $default, {
    TResult? Function(
            int id,
            DateTime timestamp,
            String role,
            EventType eventType,
            String? studentName,
            int? studentCount,
            String? className,
            int? floor,
            String? location)?
        conflict,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, int? studentCount, String? className)?
        smoking,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, String? studentName, String? className)?
        cheating,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, @DateTimeConverter() DateTime date)?
        scheduleUpdate,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)?
        departure,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)?
        arrival,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName, int eventNumber)?
        redirectedConflict,
  }) {
    return conflict?.call(id, timestamp, role, eventType, studentName,
        studentCount, className, floor, location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int id, DateTime timestamp, String role, EventType eventType)?
        $default, {
    TResult Function(
            int id,
            DateTime timestamp,
            String role,
            EventType eventType,
            String? studentName,
            int? studentCount,
            String? className,
            int? floor,
            String? location)?
        conflict,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, int? studentCount, String? className)?
        smoking,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String? studentName, String? className)?
        cheating,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, @DateTimeConverter() DateTime date)?
        scheduleUpdate,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)?
        departure,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)?
        arrival,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName, int eventNumber)?
        redirectedConflict,
    required TResult orElse(),
  }) {
    if (conflict != null) {
      return conflict(id, timestamp, role, eventType, studentName, studentCount,
          className, floor, location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NotificationEntity value) $default, {
    required TResult Function(ConflictNotification value) conflict,
    required TResult Function(SmokingNotification value) smoking,
    required TResult Function(CheatingNotification value) cheating,
    required TResult Function(ScheduleUpdateNotification value) scheduleUpdate,
    required TResult Function(DepartureNotification value) departure,
    required TResult Function(ArrivalNotification value) arrival,
    required TResult Function(RedirectedConflictNotification value)
        redirectedConflict,
  }) {
    return conflict(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NotificationEntity value)? $default, {
    TResult? Function(ConflictNotification value)? conflict,
    TResult? Function(SmokingNotification value)? smoking,
    TResult? Function(CheatingNotification value)? cheating,
    TResult? Function(ScheduleUpdateNotification value)? scheduleUpdate,
    TResult? Function(DepartureNotification value)? departure,
    TResult? Function(ArrivalNotification value)? arrival,
    TResult? Function(RedirectedConflictNotification value)? redirectedConflict,
  }) {
    return conflict?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NotificationEntity value)? $default, {
    TResult Function(ConflictNotification value)? conflict,
    TResult Function(SmokingNotification value)? smoking,
    TResult Function(CheatingNotification value)? cheating,
    TResult Function(ScheduleUpdateNotification value)? scheduleUpdate,
    TResult Function(DepartureNotification value)? departure,
    TResult Function(ArrivalNotification value)? arrival,
    TResult Function(RedirectedConflictNotification value)? redirectedConflict,
    required TResult orElse(),
  }) {
    if (conflict != null) {
      return conflict(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ConflictNotificationImplToJson(
      this,
    );
  }
}

abstract class ConflictNotification implements NotificationEntity {
  const factory ConflictNotification(
      {required final int id,
      required final DateTime timestamp,
      required final String role,
      required final EventType eventType,
      final String? studentName,
      final int? studentCount,
      final String? className,
      final int? floor,
      final String? location}) = _$ConflictNotificationImpl;

  factory ConflictNotification.fromJson(Map<String, dynamic> json) =
      _$ConflictNotificationImpl.fromJson;

  @override
  int get id;
  @override
  DateTime get timestamp;
  @override
  String get role;
  @override
  EventType get eventType;
  String? get studentName;
  int? get studentCount;
  String? get className;
  int? get floor;
  String? get location;

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConflictNotificationImplCopyWith<_$ConflictNotificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SmokingNotificationImplCopyWith<$Res>
    implements $NotificationEntityCopyWith<$Res> {
  factory _$$SmokingNotificationImplCopyWith(_$SmokingNotificationImpl value,
          $Res Function(_$SmokingNotificationImpl) then) =
      __$$SmokingNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      DateTime timestamp,
      String role,
      EventType eventType,
      int? studentCount,
      String? className});
}

/// @nodoc
class __$$SmokingNotificationImplCopyWithImpl<$Res>
    extends _$NotificationEntityCopyWithImpl<$Res, _$SmokingNotificationImpl>
    implements _$$SmokingNotificationImplCopyWith<$Res> {
  __$$SmokingNotificationImplCopyWithImpl(_$SmokingNotificationImpl _value,
      $Res Function(_$SmokingNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp = null,
    Object? role = null,
    Object? eventType = null,
    Object? studentCount = freezed,
    Object? className = freezed,
  }) {
    return _then(_$SmokingNotificationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as EventType,
      studentCount: freezed == studentCount
          ? _value.studentCount
          : studentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      className: freezed == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SmokingNotificationImpl implements SmokingNotification {
  const _$SmokingNotificationImpl(
      {required this.id,
      required this.timestamp,
      required this.role,
      required this.eventType,
      this.studentCount,
      this.className});

  factory _$SmokingNotificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$SmokingNotificationImplFromJson(json);

  @override
  final int id;
  @override
  final DateTime timestamp;
  @override
  final String role;
  @override
  final EventType eventType;
  @override
  final int? studentCount;
  @override
  final String? className;

  @override
  String toString() {
    return 'NotificationEntity.smoking(id: $id, timestamp: $timestamp, role: $role, eventType: $eventType, studentCount: $studentCount, className: $className)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SmokingNotificationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.studentCount, studentCount) ||
                other.studentCount == studentCount) &&
            (identical(other.className, className) ||
                other.className == className));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, timestamp, role, eventType, studentCount, className);

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SmokingNotificationImplCopyWith<_$SmokingNotificationImpl> get copyWith =>
      __$$SmokingNotificationImplCopyWithImpl<_$SmokingNotificationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int id, DateTime timestamp, String role, EventType eventType)
        $default, {
    required TResult Function(
            int id,
            DateTime timestamp,
            String role,
            EventType eventType,
            String? studentName,
            int? studentCount,
            String? className,
            int? floor,
            String? location)
        conflict,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, int? studentCount, String? className)
        smoking,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String? studentName, String? className)
        cheating,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, @DateTimeConverter() DateTime date)
        scheduleUpdate,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)
        departure,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)
        arrival,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName, int eventNumber)
        redirectedConflict,
  }) {
    return smoking(id, timestamp, role, eventType, studentCount, className);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int id, DateTime timestamp, String role, EventType eventType)?
        $default, {
    TResult? Function(
            int id,
            DateTime timestamp,
            String role,
            EventType eventType,
            String? studentName,
            int? studentCount,
            String? className,
            int? floor,
            String? location)?
        conflict,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, int? studentCount, String? className)?
        smoking,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, String? studentName, String? className)?
        cheating,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, @DateTimeConverter() DateTime date)?
        scheduleUpdate,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)?
        departure,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)?
        arrival,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName, int eventNumber)?
        redirectedConflict,
  }) {
    return smoking?.call(
        id, timestamp, role, eventType, studentCount, className);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int id, DateTime timestamp, String role, EventType eventType)?
        $default, {
    TResult Function(
            int id,
            DateTime timestamp,
            String role,
            EventType eventType,
            String? studentName,
            int? studentCount,
            String? className,
            int? floor,
            String? location)?
        conflict,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, int? studentCount, String? className)?
        smoking,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String? studentName, String? className)?
        cheating,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, @DateTimeConverter() DateTime date)?
        scheduleUpdate,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)?
        departure,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)?
        arrival,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName, int eventNumber)?
        redirectedConflict,
    required TResult orElse(),
  }) {
    if (smoking != null) {
      return smoking(id, timestamp, role, eventType, studentCount, className);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NotificationEntity value) $default, {
    required TResult Function(ConflictNotification value) conflict,
    required TResult Function(SmokingNotification value) smoking,
    required TResult Function(CheatingNotification value) cheating,
    required TResult Function(ScheduleUpdateNotification value) scheduleUpdate,
    required TResult Function(DepartureNotification value) departure,
    required TResult Function(ArrivalNotification value) arrival,
    required TResult Function(RedirectedConflictNotification value)
        redirectedConflict,
  }) {
    return smoking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NotificationEntity value)? $default, {
    TResult? Function(ConflictNotification value)? conflict,
    TResult? Function(SmokingNotification value)? smoking,
    TResult? Function(CheatingNotification value)? cheating,
    TResult? Function(ScheduleUpdateNotification value)? scheduleUpdate,
    TResult? Function(DepartureNotification value)? departure,
    TResult? Function(ArrivalNotification value)? arrival,
    TResult? Function(RedirectedConflictNotification value)? redirectedConflict,
  }) {
    return smoking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NotificationEntity value)? $default, {
    TResult Function(ConflictNotification value)? conflict,
    TResult Function(SmokingNotification value)? smoking,
    TResult Function(CheatingNotification value)? cheating,
    TResult Function(ScheduleUpdateNotification value)? scheduleUpdate,
    TResult Function(DepartureNotification value)? departure,
    TResult Function(ArrivalNotification value)? arrival,
    TResult Function(RedirectedConflictNotification value)? redirectedConflict,
    required TResult orElse(),
  }) {
    if (smoking != null) {
      return smoking(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SmokingNotificationImplToJson(
      this,
    );
  }
}

abstract class SmokingNotification implements NotificationEntity {
  const factory SmokingNotification(
      {required final int id,
      required final DateTime timestamp,
      required final String role,
      required final EventType eventType,
      final int? studentCount,
      final String? className}) = _$SmokingNotificationImpl;

  factory SmokingNotification.fromJson(Map<String, dynamic> json) =
      _$SmokingNotificationImpl.fromJson;

  @override
  int get id;
  @override
  DateTime get timestamp;
  @override
  String get role;
  @override
  EventType get eventType;
  int? get studentCount;
  String? get className;

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SmokingNotificationImplCopyWith<_$SmokingNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheatingNotificationImplCopyWith<$Res>
    implements $NotificationEntityCopyWith<$Res> {
  factory _$$CheatingNotificationImplCopyWith(_$CheatingNotificationImpl value,
          $Res Function(_$CheatingNotificationImpl) then) =
      __$$CheatingNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      DateTime timestamp,
      String role,
      EventType eventType,
      String? studentName,
      String? className});
}

/// @nodoc
class __$$CheatingNotificationImplCopyWithImpl<$Res>
    extends _$NotificationEntityCopyWithImpl<$Res, _$CheatingNotificationImpl>
    implements _$$CheatingNotificationImplCopyWith<$Res> {
  __$$CheatingNotificationImplCopyWithImpl(_$CheatingNotificationImpl _value,
      $Res Function(_$CheatingNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp = null,
    Object? role = null,
    Object? eventType = null,
    Object? studentName = freezed,
    Object? className = freezed,
  }) {
    return _then(_$CheatingNotificationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as EventType,
      studentName: freezed == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String?,
      className: freezed == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheatingNotificationImpl implements CheatingNotification {
  const _$CheatingNotificationImpl(
      {required this.id,
      required this.timestamp,
      required this.role,
      required this.eventType,
      this.studentName,
      this.className});

  factory _$CheatingNotificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheatingNotificationImplFromJson(json);

  @override
  final int id;
  @override
  final DateTime timestamp;
  @override
  final String role;
  @override
  final EventType eventType;
  @override
  final String? studentName;
  @override
  final String? className;

  @override
  String toString() {
    return 'NotificationEntity.cheating(id: $id, timestamp: $timestamp, role: $role, eventType: $eventType, studentName: $studentName, className: $className)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheatingNotificationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.studentName, studentName) ||
                other.studentName == studentName) &&
            (identical(other.className, className) ||
                other.className == className));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, timestamp, role, eventType, studentName, className);

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheatingNotificationImplCopyWith<_$CheatingNotificationImpl>
      get copyWith =>
          __$$CheatingNotificationImplCopyWithImpl<_$CheatingNotificationImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int id, DateTime timestamp, String role, EventType eventType)
        $default, {
    required TResult Function(
            int id,
            DateTime timestamp,
            String role,
            EventType eventType,
            String? studentName,
            int? studentCount,
            String? className,
            int? floor,
            String? location)
        conflict,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, int? studentCount, String? className)
        smoking,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String? studentName, String? className)
        cheating,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, @DateTimeConverter() DateTime date)
        scheduleUpdate,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)
        departure,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)
        arrival,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName, int eventNumber)
        redirectedConflict,
  }) {
    return cheating(id, timestamp, role, eventType, studentName, className);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int id, DateTime timestamp, String role, EventType eventType)?
        $default, {
    TResult? Function(
            int id,
            DateTime timestamp,
            String role,
            EventType eventType,
            String? studentName,
            int? studentCount,
            String? className,
            int? floor,
            String? location)?
        conflict,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, int? studentCount, String? className)?
        smoking,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, String? studentName, String? className)?
        cheating,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, @DateTimeConverter() DateTime date)?
        scheduleUpdate,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)?
        departure,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)?
        arrival,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName, int eventNumber)?
        redirectedConflict,
  }) {
    return cheating?.call(
        id, timestamp, role, eventType, studentName, className);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int id, DateTime timestamp, String role, EventType eventType)?
        $default, {
    TResult Function(
            int id,
            DateTime timestamp,
            String role,
            EventType eventType,
            String? studentName,
            int? studentCount,
            String? className,
            int? floor,
            String? location)?
        conflict,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, int? studentCount, String? className)?
        smoking,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String? studentName, String? className)?
        cheating,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, @DateTimeConverter() DateTime date)?
        scheduleUpdate,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)?
        departure,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)?
        arrival,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName, int eventNumber)?
        redirectedConflict,
    required TResult orElse(),
  }) {
    if (cheating != null) {
      return cheating(id, timestamp, role, eventType, studentName, className);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NotificationEntity value) $default, {
    required TResult Function(ConflictNotification value) conflict,
    required TResult Function(SmokingNotification value) smoking,
    required TResult Function(CheatingNotification value) cheating,
    required TResult Function(ScheduleUpdateNotification value) scheduleUpdate,
    required TResult Function(DepartureNotification value) departure,
    required TResult Function(ArrivalNotification value) arrival,
    required TResult Function(RedirectedConflictNotification value)
        redirectedConflict,
  }) {
    return cheating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NotificationEntity value)? $default, {
    TResult? Function(ConflictNotification value)? conflict,
    TResult? Function(SmokingNotification value)? smoking,
    TResult? Function(CheatingNotification value)? cheating,
    TResult? Function(ScheduleUpdateNotification value)? scheduleUpdate,
    TResult? Function(DepartureNotification value)? departure,
    TResult? Function(ArrivalNotification value)? arrival,
    TResult? Function(RedirectedConflictNotification value)? redirectedConflict,
  }) {
    return cheating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NotificationEntity value)? $default, {
    TResult Function(ConflictNotification value)? conflict,
    TResult Function(SmokingNotification value)? smoking,
    TResult Function(CheatingNotification value)? cheating,
    TResult Function(ScheduleUpdateNotification value)? scheduleUpdate,
    TResult Function(DepartureNotification value)? departure,
    TResult Function(ArrivalNotification value)? arrival,
    TResult Function(RedirectedConflictNotification value)? redirectedConflict,
    required TResult orElse(),
  }) {
    if (cheating != null) {
      return cheating(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CheatingNotificationImplToJson(
      this,
    );
  }
}

abstract class CheatingNotification implements NotificationEntity {
  const factory CheatingNotification(
      {required final int id,
      required final DateTime timestamp,
      required final String role,
      required final EventType eventType,
      final String? studentName,
      final String? className}) = _$CheatingNotificationImpl;

  factory CheatingNotification.fromJson(Map<String, dynamic> json) =
      _$CheatingNotificationImpl.fromJson;

  @override
  int get id;
  @override
  DateTime get timestamp;
  @override
  String get role;
  @override
  EventType get eventType;
  String? get studentName;
  String? get className;

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheatingNotificationImplCopyWith<_$CheatingNotificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScheduleUpdateNotificationImplCopyWith<$Res>
    implements $NotificationEntityCopyWith<$Res> {
  factory _$$ScheduleUpdateNotificationImplCopyWith(
          _$ScheduleUpdateNotificationImpl value,
          $Res Function(_$ScheduleUpdateNotificationImpl) then) =
      __$$ScheduleUpdateNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      DateTime timestamp,
      String role,
      EventType eventType,
      @DateTimeConverter() DateTime date});
}

/// @nodoc
class __$$ScheduleUpdateNotificationImplCopyWithImpl<$Res>
    extends _$NotificationEntityCopyWithImpl<$Res,
        _$ScheduleUpdateNotificationImpl>
    implements _$$ScheduleUpdateNotificationImplCopyWith<$Res> {
  __$$ScheduleUpdateNotificationImplCopyWithImpl(
      _$ScheduleUpdateNotificationImpl _value,
      $Res Function(_$ScheduleUpdateNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp = null,
    Object? role = null,
    Object? eventType = null,
    Object? date = null,
  }) {
    return _then(_$ScheduleUpdateNotificationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as EventType,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScheduleUpdateNotificationImpl implements ScheduleUpdateNotification {
  const _$ScheduleUpdateNotificationImpl(
      {required this.id,
      required this.timestamp,
      required this.role,
      required this.eventType,
      @DateTimeConverter() required this.date});

  factory _$ScheduleUpdateNotificationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ScheduleUpdateNotificationImplFromJson(json);

  @override
  final int id;
  @override
  final DateTime timestamp;
  @override
  final String role;
  @override
  final EventType eventType;
  @override
  @DateTimeConverter()
  final DateTime date;

  @override
  String toString() {
    return 'NotificationEntity.scheduleUpdate(id: $id, timestamp: $timestamp, role: $role, eventType: $eventType, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleUpdateNotificationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, timestamp, role, eventType, date);

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleUpdateNotificationImplCopyWith<_$ScheduleUpdateNotificationImpl>
      get copyWith => __$$ScheduleUpdateNotificationImplCopyWithImpl<
          _$ScheduleUpdateNotificationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int id, DateTime timestamp, String role, EventType eventType)
        $default, {
    required TResult Function(
            int id,
            DateTime timestamp,
            String role,
            EventType eventType,
            String? studentName,
            int? studentCount,
            String? className,
            int? floor,
            String? location)
        conflict,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, int? studentCount, String? className)
        smoking,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String? studentName, String? className)
        cheating,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, @DateTimeConverter() DateTime date)
        scheduleUpdate,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)
        departure,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)
        arrival,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName, int eventNumber)
        redirectedConflict,
  }) {
    return scheduleUpdate(id, timestamp, role, eventType, date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int id, DateTime timestamp, String role, EventType eventType)?
        $default, {
    TResult? Function(
            int id,
            DateTime timestamp,
            String role,
            EventType eventType,
            String? studentName,
            int? studentCount,
            String? className,
            int? floor,
            String? location)?
        conflict,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, int? studentCount, String? className)?
        smoking,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, String? studentName, String? className)?
        cheating,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, @DateTimeConverter() DateTime date)?
        scheduleUpdate,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)?
        departure,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)?
        arrival,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName, int eventNumber)?
        redirectedConflict,
  }) {
    return scheduleUpdate?.call(id, timestamp, role, eventType, date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int id, DateTime timestamp, String role, EventType eventType)?
        $default, {
    TResult Function(
            int id,
            DateTime timestamp,
            String role,
            EventType eventType,
            String? studentName,
            int? studentCount,
            String? className,
            int? floor,
            String? location)?
        conflict,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, int? studentCount, String? className)?
        smoking,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String? studentName, String? className)?
        cheating,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, @DateTimeConverter() DateTime date)?
        scheduleUpdate,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)?
        departure,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)?
        arrival,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName, int eventNumber)?
        redirectedConflict,
    required TResult orElse(),
  }) {
    if (scheduleUpdate != null) {
      return scheduleUpdate(id, timestamp, role, eventType, date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NotificationEntity value) $default, {
    required TResult Function(ConflictNotification value) conflict,
    required TResult Function(SmokingNotification value) smoking,
    required TResult Function(CheatingNotification value) cheating,
    required TResult Function(ScheduleUpdateNotification value) scheduleUpdate,
    required TResult Function(DepartureNotification value) departure,
    required TResult Function(ArrivalNotification value) arrival,
    required TResult Function(RedirectedConflictNotification value)
        redirectedConflict,
  }) {
    return scheduleUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NotificationEntity value)? $default, {
    TResult? Function(ConflictNotification value)? conflict,
    TResult? Function(SmokingNotification value)? smoking,
    TResult? Function(CheatingNotification value)? cheating,
    TResult? Function(ScheduleUpdateNotification value)? scheduleUpdate,
    TResult? Function(DepartureNotification value)? departure,
    TResult? Function(ArrivalNotification value)? arrival,
    TResult? Function(RedirectedConflictNotification value)? redirectedConflict,
  }) {
    return scheduleUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NotificationEntity value)? $default, {
    TResult Function(ConflictNotification value)? conflict,
    TResult Function(SmokingNotification value)? smoking,
    TResult Function(CheatingNotification value)? cheating,
    TResult Function(ScheduleUpdateNotification value)? scheduleUpdate,
    TResult Function(DepartureNotification value)? departure,
    TResult Function(ArrivalNotification value)? arrival,
    TResult Function(RedirectedConflictNotification value)? redirectedConflict,
    required TResult orElse(),
  }) {
    if (scheduleUpdate != null) {
      return scheduleUpdate(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleUpdateNotificationImplToJson(
      this,
    );
  }
}

abstract class ScheduleUpdateNotification implements NotificationEntity {
  const factory ScheduleUpdateNotification(
          {required final int id,
          required final DateTime timestamp,
          required final String role,
          required final EventType eventType,
          @DateTimeConverter() required final DateTime date}) =
      _$ScheduleUpdateNotificationImpl;

  factory ScheduleUpdateNotification.fromJson(Map<String, dynamic> json) =
      _$ScheduleUpdateNotificationImpl.fromJson;

  @override
  int get id;
  @override
  DateTime get timestamp;
  @override
  String get role;
  @override
  EventType get eventType;
  @DateTimeConverter()
  DateTime get date;

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleUpdateNotificationImplCopyWith<_$ScheduleUpdateNotificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DepartureNotificationImplCopyWith<$Res>
    implements $NotificationEntityCopyWith<$Res> {
  factory _$$DepartureNotificationImplCopyWith(
          _$DepartureNotificationImpl value,
          $Res Function(_$DepartureNotificationImpl) then) =
      __$$DepartureNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      DateTime timestamp,
      String role,
      EventType eventType,
      String studentName});
}

/// @nodoc
class __$$DepartureNotificationImplCopyWithImpl<$Res>
    extends _$NotificationEntityCopyWithImpl<$Res, _$DepartureNotificationImpl>
    implements _$$DepartureNotificationImplCopyWith<$Res> {
  __$$DepartureNotificationImplCopyWithImpl(_$DepartureNotificationImpl _value,
      $Res Function(_$DepartureNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp = null,
    Object? role = null,
    Object? eventType = null,
    Object? studentName = null,
  }) {
    return _then(_$DepartureNotificationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as EventType,
      studentName: null == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DepartureNotificationImpl implements DepartureNotification {
  const _$DepartureNotificationImpl(
      {required this.id,
      required this.timestamp,
      required this.role,
      required this.eventType,
      required this.studentName});

  factory _$DepartureNotificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$DepartureNotificationImplFromJson(json);

  @override
  final int id;
  @override
  final DateTime timestamp;
  @override
  final String role;
  @override
  final EventType eventType;
  @override
  final String studentName;

  @override
  String toString() {
    return 'NotificationEntity.departure(id: $id, timestamp: $timestamp, role: $role, eventType: $eventType, studentName: $studentName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepartureNotificationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.studentName, studentName) ||
                other.studentName == studentName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, timestamp, role, eventType, studentName);

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DepartureNotificationImplCopyWith<_$DepartureNotificationImpl>
      get copyWith => __$$DepartureNotificationImplCopyWithImpl<
          _$DepartureNotificationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int id, DateTime timestamp, String role, EventType eventType)
        $default, {
    required TResult Function(
            int id,
            DateTime timestamp,
            String role,
            EventType eventType,
            String? studentName,
            int? studentCount,
            String? className,
            int? floor,
            String? location)
        conflict,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, int? studentCount, String? className)
        smoking,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String? studentName, String? className)
        cheating,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, @DateTimeConverter() DateTime date)
        scheduleUpdate,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)
        departure,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)
        arrival,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName, int eventNumber)
        redirectedConflict,
  }) {
    return departure(id, timestamp, role, eventType, studentName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int id, DateTime timestamp, String role, EventType eventType)?
        $default, {
    TResult? Function(
            int id,
            DateTime timestamp,
            String role,
            EventType eventType,
            String? studentName,
            int? studentCount,
            String? className,
            int? floor,
            String? location)?
        conflict,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, int? studentCount, String? className)?
        smoking,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, String? studentName, String? className)?
        cheating,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, @DateTimeConverter() DateTime date)?
        scheduleUpdate,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)?
        departure,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)?
        arrival,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName, int eventNumber)?
        redirectedConflict,
  }) {
    return departure?.call(id, timestamp, role, eventType, studentName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int id, DateTime timestamp, String role, EventType eventType)?
        $default, {
    TResult Function(
            int id,
            DateTime timestamp,
            String role,
            EventType eventType,
            String? studentName,
            int? studentCount,
            String? className,
            int? floor,
            String? location)?
        conflict,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, int? studentCount, String? className)?
        smoking,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String? studentName, String? className)?
        cheating,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, @DateTimeConverter() DateTime date)?
        scheduleUpdate,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)?
        departure,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)?
        arrival,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName, int eventNumber)?
        redirectedConflict,
    required TResult orElse(),
  }) {
    if (departure != null) {
      return departure(id, timestamp, role, eventType, studentName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NotificationEntity value) $default, {
    required TResult Function(ConflictNotification value) conflict,
    required TResult Function(SmokingNotification value) smoking,
    required TResult Function(CheatingNotification value) cheating,
    required TResult Function(ScheduleUpdateNotification value) scheduleUpdate,
    required TResult Function(DepartureNotification value) departure,
    required TResult Function(ArrivalNotification value) arrival,
    required TResult Function(RedirectedConflictNotification value)
        redirectedConflict,
  }) {
    return departure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NotificationEntity value)? $default, {
    TResult? Function(ConflictNotification value)? conflict,
    TResult? Function(SmokingNotification value)? smoking,
    TResult? Function(CheatingNotification value)? cheating,
    TResult? Function(ScheduleUpdateNotification value)? scheduleUpdate,
    TResult? Function(DepartureNotification value)? departure,
    TResult? Function(ArrivalNotification value)? arrival,
    TResult? Function(RedirectedConflictNotification value)? redirectedConflict,
  }) {
    return departure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NotificationEntity value)? $default, {
    TResult Function(ConflictNotification value)? conflict,
    TResult Function(SmokingNotification value)? smoking,
    TResult Function(CheatingNotification value)? cheating,
    TResult Function(ScheduleUpdateNotification value)? scheduleUpdate,
    TResult Function(DepartureNotification value)? departure,
    TResult Function(ArrivalNotification value)? arrival,
    TResult Function(RedirectedConflictNotification value)? redirectedConflict,
    required TResult orElse(),
  }) {
    if (departure != null) {
      return departure(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DepartureNotificationImplToJson(
      this,
    );
  }
}

abstract class DepartureNotification implements NotificationEntity {
  const factory DepartureNotification(
      {required final int id,
      required final DateTime timestamp,
      required final String role,
      required final EventType eventType,
      required final String studentName}) = _$DepartureNotificationImpl;

  factory DepartureNotification.fromJson(Map<String, dynamic> json) =
      _$DepartureNotificationImpl.fromJson;

  @override
  int get id;
  @override
  DateTime get timestamp;
  @override
  String get role;
  @override
  EventType get eventType;
  String get studentName;

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DepartureNotificationImplCopyWith<_$DepartureNotificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArrivalNotificationImplCopyWith<$Res>
    implements $NotificationEntityCopyWith<$Res> {
  factory _$$ArrivalNotificationImplCopyWith(_$ArrivalNotificationImpl value,
          $Res Function(_$ArrivalNotificationImpl) then) =
      __$$ArrivalNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      DateTime timestamp,
      String role,
      EventType eventType,
      String studentName});
}

/// @nodoc
class __$$ArrivalNotificationImplCopyWithImpl<$Res>
    extends _$NotificationEntityCopyWithImpl<$Res, _$ArrivalNotificationImpl>
    implements _$$ArrivalNotificationImplCopyWith<$Res> {
  __$$ArrivalNotificationImplCopyWithImpl(_$ArrivalNotificationImpl _value,
      $Res Function(_$ArrivalNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp = null,
    Object? role = null,
    Object? eventType = null,
    Object? studentName = null,
  }) {
    return _then(_$ArrivalNotificationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as EventType,
      studentName: null == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArrivalNotificationImpl implements ArrivalNotification {
  const _$ArrivalNotificationImpl(
      {required this.id,
      required this.timestamp,
      required this.role,
      required this.eventType,
      required this.studentName});

  factory _$ArrivalNotificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArrivalNotificationImplFromJson(json);

  @override
  final int id;
  @override
  final DateTime timestamp;
  @override
  final String role;
  @override
  final EventType eventType;
  @override
  final String studentName;

  @override
  String toString() {
    return 'NotificationEntity.arrival(id: $id, timestamp: $timestamp, role: $role, eventType: $eventType, studentName: $studentName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArrivalNotificationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.studentName, studentName) ||
                other.studentName == studentName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, timestamp, role, eventType, studentName);

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArrivalNotificationImplCopyWith<_$ArrivalNotificationImpl> get copyWith =>
      __$$ArrivalNotificationImplCopyWithImpl<_$ArrivalNotificationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int id, DateTime timestamp, String role, EventType eventType)
        $default, {
    required TResult Function(
            int id,
            DateTime timestamp,
            String role,
            EventType eventType,
            String? studentName,
            int? studentCount,
            String? className,
            int? floor,
            String? location)
        conflict,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, int? studentCount, String? className)
        smoking,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String? studentName, String? className)
        cheating,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, @DateTimeConverter() DateTime date)
        scheduleUpdate,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)
        departure,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)
        arrival,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName, int eventNumber)
        redirectedConflict,
  }) {
    return arrival(id, timestamp, role, eventType, studentName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int id, DateTime timestamp, String role, EventType eventType)?
        $default, {
    TResult? Function(
            int id,
            DateTime timestamp,
            String role,
            EventType eventType,
            String? studentName,
            int? studentCount,
            String? className,
            int? floor,
            String? location)?
        conflict,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, int? studentCount, String? className)?
        smoking,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, String? studentName, String? className)?
        cheating,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, @DateTimeConverter() DateTime date)?
        scheduleUpdate,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)?
        departure,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)?
        arrival,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName, int eventNumber)?
        redirectedConflict,
  }) {
    return arrival?.call(id, timestamp, role, eventType, studentName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int id, DateTime timestamp, String role, EventType eventType)?
        $default, {
    TResult Function(
            int id,
            DateTime timestamp,
            String role,
            EventType eventType,
            String? studentName,
            int? studentCount,
            String? className,
            int? floor,
            String? location)?
        conflict,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, int? studentCount, String? className)?
        smoking,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String? studentName, String? className)?
        cheating,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, @DateTimeConverter() DateTime date)?
        scheduleUpdate,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)?
        departure,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)?
        arrival,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName, int eventNumber)?
        redirectedConflict,
    required TResult orElse(),
  }) {
    if (arrival != null) {
      return arrival(id, timestamp, role, eventType, studentName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NotificationEntity value) $default, {
    required TResult Function(ConflictNotification value) conflict,
    required TResult Function(SmokingNotification value) smoking,
    required TResult Function(CheatingNotification value) cheating,
    required TResult Function(ScheduleUpdateNotification value) scheduleUpdate,
    required TResult Function(DepartureNotification value) departure,
    required TResult Function(ArrivalNotification value) arrival,
    required TResult Function(RedirectedConflictNotification value)
        redirectedConflict,
  }) {
    return arrival(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NotificationEntity value)? $default, {
    TResult? Function(ConflictNotification value)? conflict,
    TResult? Function(SmokingNotification value)? smoking,
    TResult? Function(CheatingNotification value)? cheating,
    TResult? Function(ScheduleUpdateNotification value)? scheduleUpdate,
    TResult? Function(DepartureNotification value)? departure,
    TResult? Function(ArrivalNotification value)? arrival,
    TResult? Function(RedirectedConflictNotification value)? redirectedConflict,
  }) {
    return arrival?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NotificationEntity value)? $default, {
    TResult Function(ConflictNotification value)? conflict,
    TResult Function(SmokingNotification value)? smoking,
    TResult Function(CheatingNotification value)? cheating,
    TResult Function(ScheduleUpdateNotification value)? scheduleUpdate,
    TResult Function(DepartureNotification value)? departure,
    TResult Function(ArrivalNotification value)? arrival,
    TResult Function(RedirectedConflictNotification value)? redirectedConflict,
    required TResult orElse(),
  }) {
    if (arrival != null) {
      return arrival(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ArrivalNotificationImplToJson(
      this,
    );
  }
}

abstract class ArrivalNotification implements NotificationEntity {
  const factory ArrivalNotification(
      {required final int id,
      required final DateTime timestamp,
      required final String role,
      required final EventType eventType,
      required final String studentName}) = _$ArrivalNotificationImpl;

  factory ArrivalNotification.fromJson(Map<String, dynamic> json) =
      _$ArrivalNotificationImpl.fromJson;

  @override
  int get id;
  @override
  DateTime get timestamp;
  @override
  String get role;
  @override
  EventType get eventType;
  String get studentName;

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArrivalNotificationImplCopyWith<_$ArrivalNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RedirectedConflictNotificationImplCopyWith<$Res>
    implements $NotificationEntityCopyWith<$Res> {
  factory _$$RedirectedConflictNotificationImplCopyWith(
          _$RedirectedConflictNotificationImpl value,
          $Res Function(_$RedirectedConflictNotificationImpl) then) =
      __$$RedirectedConflictNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      DateTime timestamp,
      String role,
      EventType eventType,
      String studentName,
      int eventNumber});
}

/// @nodoc
class __$$RedirectedConflictNotificationImplCopyWithImpl<$Res>
    extends _$NotificationEntityCopyWithImpl<$Res,
        _$RedirectedConflictNotificationImpl>
    implements _$$RedirectedConflictNotificationImplCopyWith<$Res> {
  __$$RedirectedConflictNotificationImplCopyWithImpl(
      _$RedirectedConflictNotificationImpl _value,
      $Res Function(_$RedirectedConflictNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp = null,
    Object? role = null,
    Object? eventType = null,
    Object? studentName = null,
    Object? eventNumber = null,
  }) {
    return _then(_$RedirectedConflictNotificationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as EventType,
      studentName: null == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String,
      eventNumber: null == eventNumber
          ? _value.eventNumber
          : eventNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RedirectedConflictNotificationImpl
    implements RedirectedConflictNotification {
  const _$RedirectedConflictNotificationImpl(
      {required this.id,
      required this.timestamp,
      required this.role,
      required this.eventType,
      required this.studentName,
      required this.eventNumber});

  factory _$RedirectedConflictNotificationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RedirectedConflictNotificationImplFromJson(json);

  @override
  final int id;
  @override
  final DateTime timestamp;
  @override
  final String role;
  @override
  final EventType eventType;
  @override
  final String studentName;
  @override
  final int eventNumber;

  @override
  String toString() {
    return 'NotificationEntity.redirectedConflict(id: $id, timestamp: $timestamp, role: $role, eventType: $eventType, studentName: $studentName, eventNumber: $eventNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RedirectedConflictNotificationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.studentName, studentName) ||
                other.studentName == studentName) &&
            (identical(other.eventNumber, eventNumber) ||
                other.eventNumber == eventNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, timestamp, role, eventType, studentName, eventNumber);

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RedirectedConflictNotificationImplCopyWith<
          _$RedirectedConflictNotificationImpl>
      get copyWith => __$$RedirectedConflictNotificationImplCopyWithImpl<
          _$RedirectedConflictNotificationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int id, DateTime timestamp, String role, EventType eventType)
        $default, {
    required TResult Function(
            int id,
            DateTime timestamp,
            String role,
            EventType eventType,
            String? studentName,
            int? studentCount,
            String? className,
            int? floor,
            String? location)
        conflict,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, int? studentCount, String? className)
        smoking,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String? studentName, String? className)
        cheating,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, @DateTimeConverter() DateTime date)
        scheduleUpdate,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)
        departure,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)
        arrival,
    required TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName, int eventNumber)
        redirectedConflict,
  }) {
    return redirectedConflict(
        id, timestamp, role, eventType, studentName, eventNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int id, DateTime timestamp, String role, EventType eventType)?
        $default, {
    TResult? Function(
            int id,
            DateTime timestamp,
            String role,
            EventType eventType,
            String? studentName,
            int? studentCount,
            String? className,
            int? floor,
            String? location)?
        conflict,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, int? studentCount, String? className)?
        smoking,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, String? studentName, String? className)?
        cheating,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, @DateTimeConverter() DateTime date)?
        scheduleUpdate,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)?
        departure,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)?
        arrival,
    TResult? Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName, int eventNumber)?
        redirectedConflict,
  }) {
    return redirectedConflict?.call(
        id, timestamp, role, eventType, studentName, eventNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int id, DateTime timestamp, String role, EventType eventType)?
        $default, {
    TResult Function(
            int id,
            DateTime timestamp,
            String role,
            EventType eventType,
            String? studentName,
            int? studentCount,
            String? className,
            int? floor,
            String? location)?
        conflict,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, int? studentCount, String? className)?
        smoking,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String? studentName, String? className)?
        cheating,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, @DateTimeConverter() DateTime date)?
        scheduleUpdate,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)?
        departure,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName)?
        arrival,
    TResult Function(int id, DateTime timestamp, String role,
            EventType eventType, String studentName, int eventNumber)?
        redirectedConflict,
    required TResult orElse(),
  }) {
    if (redirectedConflict != null) {
      return redirectedConflict(
          id, timestamp, role, eventType, studentName, eventNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NotificationEntity value) $default, {
    required TResult Function(ConflictNotification value) conflict,
    required TResult Function(SmokingNotification value) smoking,
    required TResult Function(CheatingNotification value) cheating,
    required TResult Function(ScheduleUpdateNotification value) scheduleUpdate,
    required TResult Function(DepartureNotification value) departure,
    required TResult Function(ArrivalNotification value) arrival,
    required TResult Function(RedirectedConflictNotification value)
        redirectedConflict,
  }) {
    return redirectedConflict(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NotificationEntity value)? $default, {
    TResult? Function(ConflictNotification value)? conflict,
    TResult? Function(SmokingNotification value)? smoking,
    TResult? Function(CheatingNotification value)? cheating,
    TResult? Function(ScheduleUpdateNotification value)? scheduleUpdate,
    TResult? Function(DepartureNotification value)? departure,
    TResult? Function(ArrivalNotification value)? arrival,
    TResult? Function(RedirectedConflictNotification value)? redirectedConflict,
  }) {
    return redirectedConflict?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NotificationEntity value)? $default, {
    TResult Function(ConflictNotification value)? conflict,
    TResult Function(SmokingNotification value)? smoking,
    TResult Function(CheatingNotification value)? cheating,
    TResult Function(ScheduleUpdateNotification value)? scheduleUpdate,
    TResult Function(DepartureNotification value)? departure,
    TResult Function(ArrivalNotification value)? arrival,
    TResult Function(RedirectedConflictNotification value)? redirectedConflict,
    required TResult orElse(),
  }) {
    if (redirectedConflict != null) {
      return redirectedConflict(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RedirectedConflictNotificationImplToJson(
      this,
    );
  }
}

abstract class RedirectedConflictNotification implements NotificationEntity {
  const factory RedirectedConflictNotification(
      {required final int id,
      required final DateTime timestamp,
      required final String role,
      required final EventType eventType,
      required final String studentName,
      required final int eventNumber}) = _$RedirectedConflictNotificationImpl;

  factory RedirectedConflictNotification.fromJson(Map<String, dynamic> json) =
      _$RedirectedConflictNotificationImpl.fromJson;

  @override
  int get id;
  @override
  DateTime get timestamp;
  @override
  String get role;
  @override
  EventType get eventType;
  String get studentName;
  int get eventNumber;

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RedirectedConflictNotificationImplCopyWith<
          _$RedirectedConflictNotificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
