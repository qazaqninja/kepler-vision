// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_class_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileClassEntity _$ProfileClassEntityFromJson(Map<String, dynamic> json) {
  return _ProfileClassEntity.fromJson(json);
}

/// @nodoc
mixin _$ProfileClassEntity {
  String? get name => throw _privateConstructorUsedError;
  bool? get isClassroomTeacher => throw _privateConstructorUsedError;
  String? get courseName => throw _privateConstructorUsedError;

  /// Serializes this ProfileClassEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileClassEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileClassEntityCopyWith<ProfileClassEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileClassEntityCopyWith<$Res> {
  factory $ProfileClassEntityCopyWith(
          ProfileClassEntity value, $Res Function(ProfileClassEntity) then) =
      _$ProfileClassEntityCopyWithImpl<$Res, ProfileClassEntity>;
  @useResult
  $Res call({String? name, bool? isClassroomTeacher, String? courseName});
}

/// @nodoc
class _$ProfileClassEntityCopyWithImpl<$Res, $Val extends ProfileClassEntity>
    implements $ProfileClassEntityCopyWith<$Res> {
  _$ProfileClassEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileClassEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? isClassroomTeacher = freezed,
    Object? courseName = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      isClassroomTeacher: freezed == isClassroomTeacher
          ? _value.isClassroomTeacher
          : isClassroomTeacher // ignore: cast_nullable_to_non_nullable
              as bool?,
      courseName: freezed == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileClassEntityImplCopyWith<$Res>
    implements $ProfileClassEntityCopyWith<$Res> {
  factory _$$ProfileClassEntityImplCopyWith(_$ProfileClassEntityImpl value,
          $Res Function(_$ProfileClassEntityImpl) then) =
      __$$ProfileClassEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, bool? isClassroomTeacher, String? courseName});
}

/// @nodoc
class __$$ProfileClassEntityImplCopyWithImpl<$Res>
    extends _$ProfileClassEntityCopyWithImpl<$Res, _$ProfileClassEntityImpl>
    implements _$$ProfileClassEntityImplCopyWith<$Res> {
  __$$ProfileClassEntityImplCopyWithImpl(_$ProfileClassEntityImpl _value,
      $Res Function(_$ProfileClassEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileClassEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? isClassroomTeacher = freezed,
    Object? courseName = freezed,
  }) {
    return _then(_$ProfileClassEntityImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      isClassroomTeacher: freezed == isClassroomTeacher
          ? _value.isClassroomTeacher
          : isClassroomTeacher // ignore: cast_nullable_to_non_nullable
              as bool?,
      courseName: freezed == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileClassEntityImpl implements _ProfileClassEntity {
  const _$ProfileClassEntityImpl(
      {this.name, this.isClassroomTeacher, this.courseName});

  factory _$ProfileClassEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileClassEntityImplFromJson(json);

  @override
  final String? name;
  @override
  final bool? isClassroomTeacher;
  @override
  final String? courseName;

  @override
  String toString() {
    return 'ProfileClassEntity(name: $name, isClassroomTeacher: $isClassroomTeacher, courseName: $courseName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileClassEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isClassroomTeacher, isClassroomTeacher) ||
                other.isClassroomTeacher == isClassroomTeacher) &&
            (identical(other.courseName, courseName) ||
                other.courseName == courseName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, isClassroomTeacher, courseName);

  /// Create a copy of ProfileClassEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileClassEntityImplCopyWith<_$ProfileClassEntityImpl> get copyWith =>
      __$$ProfileClassEntityImplCopyWithImpl<_$ProfileClassEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileClassEntityImplToJson(
      this,
    );
  }
}

abstract class _ProfileClassEntity implements ProfileClassEntity {
  const factory _ProfileClassEntity(
      {final String? name,
      final bool? isClassroomTeacher,
      final String? courseName}) = _$ProfileClassEntityImpl;

  factory _ProfileClassEntity.fromJson(Map<String, dynamic> json) =
      _$ProfileClassEntityImpl.fromJson;

  @override
  String? get name;
  @override
  bool? get isClassroomTeacher;
  @override
  String? get courseName;

  /// Create a copy of ProfileClassEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileClassEntityImplCopyWith<_$ProfileClassEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
