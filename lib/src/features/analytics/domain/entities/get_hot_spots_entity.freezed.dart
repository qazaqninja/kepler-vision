// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_hot_spots_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetHotSpotsEntity _$GetHotSpotsEntityFromJson(Map<String, dynamic> json) {
  return _GetHotSpotsEntity.fromJson(json);
}

/// @nodoc
mixin _$GetHotSpotsEntity {
  String get status =>
      throw _privateConstructorUsedError; // required Map<String, dynamic> meta,
  HotSpotsEntity? get data => throw _privateConstructorUsedError;

  /// Serializes this GetHotSpotsEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetHotSpotsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetHotSpotsEntityCopyWith<GetHotSpotsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetHotSpotsEntityCopyWith<$Res> {
  factory $GetHotSpotsEntityCopyWith(
          GetHotSpotsEntity value, $Res Function(GetHotSpotsEntity) then) =
      _$GetHotSpotsEntityCopyWithImpl<$Res, GetHotSpotsEntity>;
  @useResult
  $Res call({String status, HotSpotsEntity? data});

  $HotSpotsEntityCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetHotSpotsEntityCopyWithImpl<$Res, $Val extends GetHotSpotsEntity>
    implements $GetHotSpotsEntityCopyWith<$Res> {
  _$GetHotSpotsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetHotSpotsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HotSpotsEntity?,
    ) as $Val);
  }

  /// Create a copy of GetHotSpotsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HotSpotsEntityCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $HotSpotsEntityCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetHotSpotsEntityImplCopyWith<$Res>
    implements $GetHotSpotsEntityCopyWith<$Res> {
  factory _$$GetHotSpotsEntityImplCopyWith(_$GetHotSpotsEntityImpl value,
          $Res Function(_$GetHotSpotsEntityImpl) then) =
      __$$GetHotSpotsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, HotSpotsEntity? data});

  @override
  $HotSpotsEntityCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetHotSpotsEntityImplCopyWithImpl<$Res>
    extends _$GetHotSpotsEntityCopyWithImpl<$Res, _$GetHotSpotsEntityImpl>
    implements _$$GetHotSpotsEntityImplCopyWith<$Res> {
  __$$GetHotSpotsEntityImplCopyWithImpl(_$GetHotSpotsEntityImpl _value,
      $Res Function(_$GetHotSpotsEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetHotSpotsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = freezed,
  }) {
    return _then(_$GetHotSpotsEntityImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HotSpotsEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetHotSpotsEntityImpl implements _GetHotSpotsEntity {
  _$GetHotSpotsEntityImpl({required this.status, required this.data});

  factory _$GetHotSpotsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetHotSpotsEntityImplFromJson(json);

  @override
  final String status;
// required Map<String, dynamic> meta,
  @override
  final HotSpotsEntity? data;

  @override
  String toString() {
    return 'GetHotSpotsEntity(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetHotSpotsEntityImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  /// Create a copy of GetHotSpotsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetHotSpotsEntityImplCopyWith<_$GetHotSpotsEntityImpl> get copyWith =>
      __$$GetHotSpotsEntityImplCopyWithImpl<_$GetHotSpotsEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetHotSpotsEntityImplToJson(
      this,
    );
  }
}

abstract class _GetHotSpotsEntity implements GetHotSpotsEntity {
  factory _GetHotSpotsEntity(
      {required final String status,
      required final HotSpotsEntity? data}) = _$GetHotSpotsEntityImpl;

  factory _GetHotSpotsEntity.fromJson(Map<String, dynamic> json) =
      _$GetHotSpotsEntityImpl.fromJson;

  @override
  String get status; // required Map<String, dynamic> meta,
  @override
  HotSpotsEntity? get data;

  /// Create a copy of GetHotSpotsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetHotSpotsEntityImplCopyWith<_$GetHotSpotsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
