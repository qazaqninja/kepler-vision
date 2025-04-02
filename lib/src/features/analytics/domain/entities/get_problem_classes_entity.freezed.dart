// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_problem_classes_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetProblemClassesEntity _$GetProblemClassesEntityFromJson(
    Map<String, dynamic> json) {
  return _GetProblemClassesEntity.fromJson(json);
}

/// @nodoc
mixin _$GetProblemClassesEntity {
  String get status => throw _privateConstructorUsedError;
  Map<String, dynamic> get meta => throw _privateConstructorUsedError;
  ProblemClassesEntity? get data => throw _privateConstructorUsedError;

  /// Serializes this GetProblemClassesEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetProblemClassesEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetProblemClassesEntityCopyWith<GetProblemClassesEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProblemClassesEntityCopyWith<$Res> {
  factory $GetProblemClassesEntityCopyWith(GetProblemClassesEntity value,
          $Res Function(GetProblemClassesEntity) then) =
      _$GetProblemClassesEntityCopyWithImpl<$Res, GetProblemClassesEntity>;
  @useResult
  $Res call(
      {String status, Map<String, dynamic> meta, ProblemClassesEntity? data});

  $ProblemClassesEntityCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetProblemClassesEntityCopyWithImpl<$Res,
        $Val extends GetProblemClassesEntity>
    implements $GetProblemClassesEntityCopyWith<$Res> {
  _$GetProblemClassesEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetProblemClassesEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? meta = null,
    Object? data = freezed,
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProblemClassesEntity?,
    ) as $Val);
  }

  /// Create a copy of GetProblemClassesEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProblemClassesEntityCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ProblemClassesEntityCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetProblemClassesEntityImplCopyWith<$Res>
    implements $GetProblemClassesEntityCopyWith<$Res> {
  factory _$$GetProblemClassesEntityImplCopyWith(
          _$GetProblemClassesEntityImpl value,
          $Res Function(_$GetProblemClassesEntityImpl) then) =
      __$$GetProblemClassesEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String status, Map<String, dynamic> meta, ProblemClassesEntity? data});

  @override
  $ProblemClassesEntityCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetProblemClassesEntityImplCopyWithImpl<$Res>
    extends _$GetProblemClassesEntityCopyWithImpl<$Res,
        _$GetProblemClassesEntityImpl>
    implements _$$GetProblemClassesEntityImplCopyWith<$Res> {
  __$$GetProblemClassesEntityImplCopyWithImpl(
      _$GetProblemClassesEntityImpl _value,
      $Res Function(_$GetProblemClassesEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetProblemClassesEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? meta = null,
    Object? data = freezed,
  }) {
    return _then(_$GetProblemClassesEntityImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      meta: null == meta
          ? _value._meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProblemClassesEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetProblemClassesEntityImpl implements _GetProblemClassesEntity {
  _$GetProblemClassesEntityImpl(
      {required this.status,
      required final Map<String, dynamic> meta,
      required this.data})
      : _meta = meta;

  factory _$GetProblemClassesEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetProblemClassesEntityImplFromJson(json);

  @override
  final String status;
  final Map<String, dynamic> _meta;
  @override
  Map<String, dynamic> get meta {
    if (_meta is EqualUnmodifiableMapView) return _meta;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_meta);
  }

  @override
  final ProblemClassesEntity? data;

  @override
  String toString() {
    return 'GetProblemClassesEntity(status: $status, meta: $meta, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProblemClassesEntityImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._meta, _meta) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_meta), data);

  /// Create a copy of GetProblemClassesEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProblemClassesEntityImplCopyWith<_$GetProblemClassesEntityImpl>
      get copyWith => __$$GetProblemClassesEntityImplCopyWithImpl<
          _$GetProblemClassesEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetProblemClassesEntityImplToJson(
      this,
    );
  }
}

abstract class _GetProblemClassesEntity implements GetProblemClassesEntity {
  factory _GetProblemClassesEntity(
          {required final String status,
          required final Map<String, dynamic> meta,
          required final ProblemClassesEntity? data}) =
      _$GetProblemClassesEntityImpl;

  factory _GetProblemClassesEntity.fromJson(Map<String, dynamic> json) =
      _$GetProblemClassesEntityImpl.fromJson;

  @override
  String get status;
  @override
  Map<String, dynamic> get meta;
  @override
  ProblemClassesEntity? get data;

  /// Create a copy of GetProblemClassesEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetProblemClassesEntityImplCopyWith<_$GetProblemClassesEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
