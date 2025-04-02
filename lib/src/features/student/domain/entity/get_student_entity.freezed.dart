// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_student_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetStudentEntity _$GetStudentEntityFromJson(Map<String, dynamic> json) {
  return _GetStudentEntity.fromJson(json);
}

/// @nodoc
mixin _$GetStudentEntity {
  String get status => throw _privateConstructorUsedError;
  Map<String, dynamic> get meta => throw _privateConstructorUsedError;
  List<StudentEntity> get data => throw _privateConstructorUsedError;

  /// Serializes this GetStudentEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetStudentEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetStudentEntityCopyWith<GetStudentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetStudentEntityCopyWith<$Res> {
  factory $GetStudentEntityCopyWith(
          GetStudentEntity value, $Res Function(GetStudentEntity) then) =
      _$GetStudentEntityCopyWithImpl<$Res, GetStudentEntity>;
  @useResult
  $Res call(
      {String status, Map<String, dynamic> meta, List<StudentEntity> data});
}

/// @nodoc
class _$GetStudentEntityCopyWithImpl<$Res, $Val extends GetStudentEntity>
    implements $GetStudentEntityCopyWith<$Res> {
  _$GetStudentEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetStudentEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? meta = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<StudentEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetStudentEntityImplCopyWith<$Res>
    implements $GetStudentEntityCopyWith<$Res> {
  factory _$$GetStudentEntityImplCopyWith(_$GetStudentEntityImpl value,
          $Res Function(_$GetStudentEntityImpl) then) =
      __$$GetStudentEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String status, Map<String, dynamic> meta, List<StudentEntity> data});
}

/// @nodoc
class __$$GetStudentEntityImplCopyWithImpl<$Res>
    extends _$GetStudentEntityCopyWithImpl<$Res, _$GetStudentEntityImpl>
    implements _$$GetStudentEntityImplCopyWith<$Res> {
  __$$GetStudentEntityImplCopyWithImpl(_$GetStudentEntityImpl _value,
      $Res Function(_$GetStudentEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetStudentEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? meta = null,
    Object? data = null,
  }) {
    return _then(_$GetStudentEntityImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      meta: null == meta
          ? _value._meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<StudentEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetStudentEntityImpl implements _GetStudentEntity {
  _$GetStudentEntityImpl(
      {required this.status,
      final Map<String, dynamic> meta = const {},
      required final List<StudentEntity> data})
      : _meta = meta,
        _data = data;

  factory _$GetStudentEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetStudentEntityImplFromJson(json);

  @override
  final String status;
  final Map<String, dynamic> _meta;
  @override
  @JsonKey()
  Map<String, dynamic> get meta {
    if (_meta is EqualUnmodifiableMapView) return _meta;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_meta);
  }

  final List<StudentEntity> _data;
  @override
  List<StudentEntity> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'GetStudentEntity(status: $status, meta: $meta, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStudentEntityImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._meta, _meta) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_meta),
      const DeepCollectionEquality().hash(_data));

  /// Create a copy of GetStudentEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStudentEntityImplCopyWith<_$GetStudentEntityImpl> get copyWith =>
      __$$GetStudentEntityImplCopyWithImpl<_$GetStudentEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetStudentEntityImplToJson(
      this,
    );
  }
}

abstract class _GetStudentEntity implements GetStudentEntity {
  factory _GetStudentEntity(
      {required final String status,
      final Map<String, dynamic> meta,
      required final List<StudentEntity> data}) = _$GetStudentEntityImpl;

  factory _GetStudentEntity.fromJson(Map<String, dynamic> json) =
      _$GetStudentEntityImpl.fromJson;

  @override
  String get status;
  @override
  Map<String, dynamic> get meta;
  @override
  List<StudentEntity> get data;

  /// Create a copy of GetStudentEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetStudentEntityImplCopyWith<_$GetStudentEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
