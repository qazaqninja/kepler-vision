// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analytic_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AnalyticEntity _$AnalyticEntityFromJson(Map<String, dynamic> json) {
  return _AnalyticEntity.fromJson(json);
}

/// @nodoc
mixin _$AnalyticEntity {
  int get conflictCount => throw _privateConstructorUsedError;
  int get smokingCount => throw _privateConstructorUsedError;
  int get cheatingCount => throw _privateConstructorUsedError;

  /// Serializes this AnalyticEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnalyticEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnalyticEntityCopyWith<AnalyticEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticEntityCopyWith<$Res> {
  factory $AnalyticEntityCopyWith(
          AnalyticEntity value, $Res Function(AnalyticEntity) then) =
      _$AnalyticEntityCopyWithImpl<$Res, AnalyticEntity>;
  @useResult
  $Res call({int conflictCount, int smokingCount, int cheatingCount});
}

/// @nodoc
class _$AnalyticEntityCopyWithImpl<$Res, $Val extends AnalyticEntity>
    implements $AnalyticEntityCopyWith<$Res> {
  _$AnalyticEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnalyticEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conflictCount = null,
    Object? smokingCount = null,
    Object? cheatingCount = null,
  }) {
    return _then(_value.copyWith(
      conflictCount: null == conflictCount
          ? _value.conflictCount
          : conflictCount // ignore: cast_nullable_to_non_nullable
              as int,
      smokingCount: null == smokingCount
          ? _value.smokingCount
          : smokingCount // ignore: cast_nullable_to_non_nullable
              as int,
      cheatingCount: null == cheatingCount
          ? _value.cheatingCount
          : cheatingCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnalyticEntityImplCopyWith<$Res>
    implements $AnalyticEntityCopyWith<$Res> {
  factory _$$AnalyticEntityImplCopyWith(_$AnalyticEntityImpl value,
          $Res Function(_$AnalyticEntityImpl) then) =
      __$$AnalyticEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int conflictCount, int smokingCount, int cheatingCount});
}

/// @nodoc
class __$$AnalyticEntityImplCopyWithImpl<$Res>
    extends _$AnalyticEntityCopyWithImpl<$Res, _$AnalyticEntityImpl>
    implements _$$AnalyticEntityImplCopyWith<$Res> {
  __$$AnalyticEntityImplCopyWithImpl(
      _$AnalyticEntityImpl _value, $Res Function(_$AnalyticEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnalyticEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conflictCount = null,
    Object? smokingCount = null,
    Object? cheatingCount = null,
  }) {
    return _then(_$AnalyticEntityImpl(
      conflictCount: null == conflictCount
          ? _value.conflictCount
          : conflictCount // ignore: cast_nullable_to_non_nullable
              as int,
      smokingCount: null == smokingCount
          ? _value.smokingCount
          : smokingCount // ignore: cast_nullable_to_non_nullable
              as int,
      cheatingCount: null == cheatingCount
          ? _value.cheatingCount
          : cheatingCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnalyticEntityImpl implements _AnalyticEntity {
  _$AnalyticEntityImpl(
      {required this.conflictCount,
      required this.smokingCount,
      required this.cheatingCount});

  factory _$AnalyticEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnalyticEntityImplFromJson(json);

  @override
  final int conflictCount;
  @override
  final int smokingCount;
  @override
  final int cheatingCount;

  @override
  String toString() {
    return 'AnalyticEntity(conflictCount: $conflictCount, smokingCount: $smokingCount, cheatingCount: $cheatingCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalyticEntityImpl &&
            (identical(other.conflictCount, conflictCount) ||
                other.conflictCount == conflictCount) &&
            (identical(other.smokingCount, smokingCount) ||
                other.smokingCount == smokingCount) &&
            (identical(other.cheatingCount, cheatingCount) ||
                other.cheatingCount == cheatingCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, conflictCount, smokingCount, cheatingCount);

  /// Create a copy of AnalyticEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalyticEntityImplCopyWith<_$AnalyticEntityImpl> get copyWith =>
      __$$AnalyticEntityImplCopyWithImpl<_$AnalyticEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnalyticEntityImplToJson(
      this,
    );
  }
}

abstract class _AnalyticEntity implements AnalyticEntity {
  factory _AnalyticEntity(
      {required final int conflictCount,
      required final int smokingCount,
      required final int cheatingCount}) = _$AnalyticEntityImpl;

  factory _AnalyticEntity.fromJson(Map<String, dynamic> json) =
      _$AnalyticEntityImpl.fromJson;

  @override
  int get conflictCount;
  @override
  int get smokingCount;
  @override
  int get cheatingCount;

  /// Create a copy of AnalyticEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnalyticEntityImplCopyWith<_$AnalyticEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
