// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClassEntity _$ClassEntityFromJson(Map<String, dynamic> json) {
  return _ClassEntity.fromJson(json);
}

/// @nodoc
mixin _$ClassEntity {
  String get className => throw _privateConstructorUsedError;
  int? get grade => throw _privateConstructorUsedError;
  int? get studentsCount => throw _privateConstructorUsedError;
  Map<EventType, int> get eventCounts => throw _privateConstructorUsedError;
  int get notificationCount => throw _privateConstructorUsedError;

  /// Serializes this ClassEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassEntityCopyWith<ClassEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassEntityCopyWith<$Res> {
  factory $ClassEntityCopyWith(
          ClassEntity value, $Res Function(ClassEntity) then) =
      _$ClassEntityCopyWithImpl<$Res, ClassEntity>;
  @useResult
  $Res call(
      {String className,
      int? grade,
      int? studentsCount,
      Map<EventType, int> eventCounts,
      int notificationCount});
}

/// @nodoc
class _$ClassEntityCopyWithImpl<$Res, $Val extends ClassEntity>
    implements $ClassEntityCopyWith<$Res> {
  _$ClassEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? className = null,
    Object? grade = freezed,
    Object? studentsCount = freezed,
    Object? eventCounts = null,
    Object? notificationCount = null,
  }) {
    return _then(_value.copyWith(
      className: null == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as int?,
      studentsCount: freezed == studentsCount
          ? _value.studentsCount
          : studentsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      eventCounts: null == eventCounts
          ? _value.eventCounts
          : eventCounts // ignore: cast_nullable_to_non_nullable
              as Map<EventType, int>,
      notificationCount: null == notificationCount
          ? _value.notificationCount
          : notificationCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClassEntityImplCopyWith<$Res>
    implements $ClassEntityCopyWith<$Res> {
  factory _$$ClassEntityImplCopyWith(
          _$ClassEntityImpl value, $Res Function(_$ClassEntityImpl) then) =
      __$$ClassEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String className,
      int? grade,
      int? studentsCount,
      Map<EventType, int> eventCounts,
      int notificationCount});
}

/// @nodoc
class __$$ClassEntityImplCopyWithImpl<$Res>
    extends _$ClassEntityCopyWithImpl<$Res, _$ClassEntityImpl>
    implements _$$ClassEntityImplCopyWith<$Res> {
  __$$ClassEntityImplCopyWithImpl(
      _$ClassEntityImpl _value, $Res Function(_$ClassEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? className = null,
    Object? grade = freezed,
    Object? studentsCount = freezed,
    Object? eventCounts = null,
    Object? notificationCount = null,
  }) {
    return _then(_$ClassEntityImpl(
      className: null == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as int?,
      studentsCount: freezed == studentsCount
          ? _value.studentsCount
          : studentsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      eventCounts: null == eventCounts
          ? _value._eventCounts
          : eventCounts // ignore: cast_nullable_to_non_nullable
              as Map<EventType, int>,
      notificationCount: null == notificationCount
          ? _value.notificationCount
          : notificationCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassEntityImpl implements _ClassEntity {
  const _$ClassEntityImpl(
      {required this.className,
      this.grade,
      this.studentsCount,
      final Map<EventType, int> eventCounts = const {},
      this.notificationCount = 0})
      : _eventCounts = eventCounts;

  factory _$ClassEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassEntityImplFromJson(json);

  @override
  final String className;
  @override
  final int? grade;
  @override
  final int? studentsCount;
  final Map<EventType, int> _eventCounts;
  @override
  @JsonKey()
  Map<EventType, int> get eventCounts {
    if (_eventCounts is EqualUnmodifiableMapView) return _eventCounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_eventCounts);
  }

  @override
  @JsonKey()
  final int notificationCount;

  @override
  String toString() {
    return 'ClassEntity(className: $className, grade: $grade, studentsCount: $studentsCount, eventCounts: $eventCounts, notificationCount: $notificationCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassEntityImpl &&
            (identical(other.className, className) ||
                other.className == className) &&
            (identical(other.grade, grade) || other.grade == grade) &&
            (identical(other.studentsCount, studentsCount) ||
                other.studentsCount == studentsCount) &&
            const DeepCollectionEquality()
                .equals(other._eventCounts, _eventCounts) &&
            (identical(other.notificationCount, notificationCount) ||
                other.notificationCount == notificationCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, className, grade, studentsCount,
      const DeepCollectionEquality().hash(_eventCounts), notificationCount);

  /// Create a copy of ClassEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassEntityImplCopyWith<_$ClassEntityImpl> get copyWith =>
      __$$ClassEntityImplCopyWithImpl<_$ClassEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassEntityImplToJson(
      this,
    );
  }
}

abstract class _ClassEntity implements ClassEntity {
  const factory _ClassEntity(
      {required final String className,
      final int? grade,
      final int? studentsCount,
      final Map<EventType, int> eventCounts,
      final int notificationCount}) = _$ClassEntityImpl;

  factory _ClassEntity.fromJson(Map<String, dynamic> json) =
      _$ClassEntityImpl.fromJson;

  @override
  String get className;
  @override
  int? get grade;
  @override
  int? get studentsCount;
  @override
  Map<EventType, int> get eventCounts;
  @override
  int get notificationCount;

  /// Create a copy of ClassEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassEntityImplCopyWith<_$ClassEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
