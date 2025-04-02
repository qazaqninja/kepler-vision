// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentEntity _$StudentEntityFromJson(Map<String, dynamic> json) {
  return _StudentEntity.fromJson(json);
}

/// @nodoc
mixin _$StudentEntity {
  int get id => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get base64Image => throw _privateConstructorUsedError;
  String get className => throw _privateConstructorUsedError;

  /// Serializes this StudentEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentEntityCopyWith<StudentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentEntityCopyWith<$Res> {
  factory $StudentEntityCopyWith(
          StudentEntity value, $Res Function(StudentEntity) then) =
      _$StudentEntityCopyWithImpl<$Res, StudentEntity>;
  @useResult
  $Res call({int id, String fullName, String base64Image, String className});
}

/// @nodoc
class _$StudentEntityCopyWithImpl<$Res, $Val extends StudentEntity>
    implements $StudentEntityCopyWith<$Res> {
  _$StudentEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? base64Image = null,
    Object? className = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      base64Image: null == base64Image
          ? _value.base64Image
          : base64Image // ignore: cast_nullable_to_non_nullable
              as String,
      className: null == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentEntityImplCopyWith<$Res>
    implements $StudentEntityCopyWith<$Res> {
  factory _$$StudentEntityImplCopyWith(
          _$StudentEntityImpl value, $Res Function(_$StudentEntityImpl) then) =
      __$$StudentEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String fullName, String base64Image, String className});
}

/// @nodoc
class __$$StudentEntityImplCopyWithImpl<$Res>
    extends _$StudentEntityCopyWithImpl<$Res, _$StudentEntityImpl>
    implements _$$StudentEntityImplCopyWith<$Res> {
  __$$StudentEntityImplCopyWithImpl(
      _$StudentEntityImpl _value, $Res Function(_$StudentEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? base64Image = null,
    Object? className = null,
  }) {
    return _then(_$StudentEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      base64Image: null == base64Image
          ? _value.base64Image
          : base64Image // ignore: cast_nullable_to_non_nullable
              as String,
      className: null == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentEntityImpl implements _StudentEntity {
  _$StudentEntityImpl(
      {required this.id,
      required this.fullName,
      required this.base64Image,
      required this.className});

  factory _$StudentEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentEntityImplFromJson(json);

  @override
  final int id;
  @override
  final String fullName;
  @override
  final String base64Image;
  @override
  final String className;

  @override
  String toString() {
    return 'StudentEntity(id: $id, fullName: $fullName, base64Image: $base64Image, className: $className)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.base64Image, base64Image) ||
                other.base64Image == base64Image) &&
            (identical(other.className, className) ||
                other.className == className));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, fullName, base64Image, className);

  /// Create a copy of StudentEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentEntityImplCopyWith<_$StudentEntityImpl> get copyWith =>
      __$$StudentEntityImplCopyWithImpl<_$StudentEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentEntityImplToJson(
      this,
    );
  }
}

abstract class _StudentEntity implements StudentEntity {
  factory _StudentEntity(
      {required final int id,
      required final String fullName,
      required final String base64Image,
      required final String className}) = _$StudentEntityImpl;

  factory _StudentEntity.fromJson(Map<String, dynamic> json) =
      _$StudentEntityImpl.fromJson;

  @override
  int get id;
  @override
  String get fullName;
  @override
  String get base64Image;
  @override
  String get className;

  /// Create a copy of StudentEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentEntityImplCopyWith<_$StudentEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
