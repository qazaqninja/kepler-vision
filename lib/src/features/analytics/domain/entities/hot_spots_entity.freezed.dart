// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hot_spots_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HotSpotsEntity _$HotSpotsEntityFromJson(Map<String, dynamic> json) {
  return _HotSpotsEntity.fromJson(json);
}

/// @nodoc
mixin _$HotSpotsEntity {
  List<String> get hotSpots => throw _privateConstructorUsedError;

  /// Serializes this HotSpotsEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HotSpotsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HotSpotsEntityCopyWith<HotSpotsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotSpotsEntityCopyWith<$Res> {
  factory $HotSpotsEntityCopyWith(
          HotSpotsEntity value, $Res Function(HotSpotsEntity) then) =
      _$HotSpotsEntityCopyWithImpl<$Res, HotSpotsEntity>;
  @useResult
  $Res call({List<String> hotSpots});
}

/// @nodoc
class _$HotSpotsEntityCopyWithImpl<$Res, $Val extends HotSpotsEntity>
    implements $HotSpotsEntityCopyWith<$Res> {
  _$HotSpotsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HotSpotsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hotSpots = null,
  }) {
    return _then(_value.copyWith(
      hotSpots: null == hotSpots
          ? _value.hotSpots
          : hotSpots // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HotSpotsEntityImplCopyWith<$Res>
    implements $HotSpotsEntityCopyWith<$Res> {
  factory _$$HotSpotsEntityImplCopyWith(_$HotSpotsEntityImpl value,
          $Res Function(_$HotSpotsEntityImpl) then) =
      __$$HotSpotsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> hotSpots});
}

/// @nodoc
class __$$HotSpotsEntityImplCopyWithImpl<$Res>
    extends _$HotSpotsEntityCopyWithImpl<$Res, _$HotSpotsEntityImpl>
    implements _$$HotSpotsEntityImplCopyWith<$Res> {
  __$$HotSpotsEntityImplCopyWithImpl(
      _$HotSpotsEntityImpl _value, $Res Function(_$HotSpotsEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of HotSpotsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hotSpots = null,
  }) {
    return _then(_$HotSpotsEntityImpl(
      hotSpots: null == hotSpots
          ? _value._hotSpots
          : hotSpots // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HotSpotsEntityImpl implements _HotSpotsEntity {
  _$HotSpotsEntityImpl({required final List<String> hotSpots})
      : _hotSpots = hotSpots;

  factory _$HotSpotsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotSpotsEntityImplFromJson(json);

  final List<String> _hotSpots;
  @override
  List<String> get hotSpots {
    if (_hotSpots is EqualUnmodifiableListView) return _hotSpots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hotSpots);
  }

  @override
  String toString() {
    return 'HotSpotsEntity(hotSpots: $hotSpots)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotSpotsEntityImpl &&
            const DeepCollectionEquality().equals(other._hotSpots, _hotSpots));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_hotSpots));

  /// Create a copy of HotSpotsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HotSpotsEntityImplCopyWith<_$HotSpotsEntityImpl> get copyWith =>
      __$$HotSpotsEntityImplCopyWithImpl<_$HotSpotsEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotSpotsEntityImplToJson(
      this,
    );
  }
}

abstract class _HotSpotsEntity implements HotSpotsEntity {
  factory _HotSpotsEntity({required final List<String> hotSpots}) =
      _$HotSpotsEntityImpl;

  factory _HotSpotsEntity.fromJson(Map<String, dynamic> json) =
      _$HotSpotsEntityImpl.fromJson;

  @override
  List<String> get hotSpots;

  /// Create a copy of HotSpotsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HotSpotsEntityImplCopyWith<_$HotSpotsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
