// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notificaiton_meta_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificaitonMetaEntity _$NotificaitonMetaEntityFromJson(
    Map<String, dynamic> json) {
  return _NotificaitonMetaEntity.fromJson(json);
}

/// @nodoc
mixin _$NotificaitonMetaEntity {
  String? get endCursor => throw _privateConstructorUsedError;
  bool? get hasNextPage => throw _privateConstructorUsedError;

  /// Serializes this NotificaitonMetaEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificaitonMetaEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificaitonMetaEntityCopyWith<NotificaitonMetaEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificaitonMetaEntityCopyWith<$Res> {
  factory $NotificaitonMetaEntityCopyWith(NotificaitonMetaEntity value,
          $Res Function(NotificaitonMetaEntity) then) =
      _$NotificaitonMetaEntityCopyWithImpl<$Res, NotificaitonMetaEntity>;
  @useResult
  $Res call({String? endCursor, bool? hasNextPage});
}

/// @nodoc
class _$NotificaitonMetaEntityCopyWithImpl<$Res,
        $Val extends NotificaitonMetaEntity>
    implements $NotificaitonMetaEntityCopyWith<$Res> {
  _$NotificaitonMetaEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificaitonMetaEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? endCursor = freezed,
    Object? hasNextPage = freezed,
  }) {
    return _then(_value.copyWith(
      endCursor: freezed == endCursor
          ? _value.endCursor
          : endCursor // ignore: cast_nullable_to_non_nullable
              as String?,
      hasNextPage: freezed == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificaitonMetaEntityImplCopyWith<$Res>
    implements $NotificaitonMetaEntityCopyWith<$Res> {
  factory _$$NotificaitonMetaEntityImplCopyWith(
          _$NotificaitonMetaEntityImpl value,
          $Res Function(_$NotificaitonMetaEntityImpl) then) =
      __$$NotificaitonMetaEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? endCursor, bool? hasNextPage});
}

/// @nodoc
class __$$NotificaitonMetaEntityImplCopyWithImpl<$Res>
    extends _$NotificaitonMetaEntityCopyWithImpl<$Res,
        _$NotificaitonMetaEntityImpl>
    implements _$$NotificaitonMetaEntityImplCopyWith<$Res> {
  __$$NotificaitonMetaEntityImplCopyWithImpl(
      _$NotificaitonMetaEntityImpl _value,
      $Res Function(_$NotificaitonMetaEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificaitonMetaEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? endCursor = freezed,
    Object? hasNextPage = freezed,
  }) {
    return _then(_$NotificaitonMetaEntityImpl(
      endCursor: freezed == endCursor
          ? _value.endCursor
          : endCursor // ignore: cast_nullable_to_non_nullable
              as String?,
      hasNextPage: freezed == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificaitonMetaEntityImpl implements _NotificaitonMetaEntity {
  _$NotificaitonMetaEntityImpl({this.endCursor, this.hasNextPage});

  factory _$NotificaitonMetaEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificaitonMetaEntityImplFromJson(json);

  @override
  final String? endCursor;
  @override
  final bool? hasNextPage;

  @override
  String toString() {
    return 'NotificaitonMetaEntity(endCursor: $endCursor, hasNextPage: $hasNextPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificaitonMetaEntityImpl &&
            (identical(other.endCursor, endCursor) ||
                other.endCursor == endCursor) &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, endCursor, hasNextPage);

  /// Create a copy of NotificaitonMetaEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificaitonMetaEntityImplCopyWith<_$NotificaitonMetaEntityImpl>
      get copyWith => __$$NotificaitonMetaEntityImplCopyWithImpl<
          _$NotificaitonMetaEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificaitonMetaEntityImplToJson(
      this,
    );
  }
}

abstract class _NotificaitonMetaEntity implements NotificaitonMetaEntity {
  factory _NotificaitonMetaEntity(
      {final String? endCursor,
      final bool? hasNextPage}) = _$NotificaitonMetaEntityImpl;

  factory _NotificaitonMetaEntity.fromJson(Map<String, dynamic> json) =
      _$NotificaitonMetaEntityImpl.fromJson;

  @override
  String? get endCursor;
  @override
  bool? get hasNextPage;

  /// Create a copy of NotificaitonMetaEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificaitonMetaEntityImplCopyWith<_$NotificaitonMetaEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
