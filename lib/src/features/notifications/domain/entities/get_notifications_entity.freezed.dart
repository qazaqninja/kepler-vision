// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_notifications_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetNotificationsEntity {
  String get status => throw _privateConstructorUsedError;
  NotificaitonMetaEntity get meta => throw _privateConstructorUsedError;
  List<NotificationEntity> get data => throw _privateConstructorUsedError;

  /// Create a copy of GetNotificationsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetNotificationsEntityCopyWith<GetNotificationsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetNotificationsEntityCopyWith<$Res> {
  factory $GetNotificationsEntityCopyWith(GetNotificationsEntity value,
          $Res Function(GetNotificationsEntity) then) =
      _$GetNotificationsEntityCopyWithImpl<$Res, GetNotificationsEntity>;
  @useResult
  $Res call(
      {String status,
      NotificaitonMetaEntity meta,
      List<NotificationEntity> data});

  $NotificaitonMetaEntityCopyWith<$Res> get meta;
}

/// @nodoc
class _$GetNotificationsEntityCopyWithImpl<$Res,
        $Val extends GetNotificationsEntity>
    implements $GetNotificationsEntityCopyWith<$Res> {
  _$GetNotificationsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetNotificationsEntity
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
              as NotificaitonMetaEntity,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NotificationEntity>,
    ) as $Val);
  }

  /// Create a copy of GetNotificationsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificaitonMetaEntityCopyWith<$Res> get meta {
    return $NotificaitonMetaEntityCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetNotificationsEntityImplCopyWith<$Res>
    implements $GetNotificationsEntityCopyWith<$Res> {
  factory _$$GetNotificationsEntityImplCopyWith(
          _$GetNotificationsEntityImpl value,
          $Res Function(_$GetNotificationsEntityImpl) then) =
      __$$GetNotificationsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String status,
      NotificaitonMetaEntity meta,
      List<NotificationEntity> data});

  @override
  $NotificaitonMetaEntityCopyWith<$Res> get meta;
}

/// @nodoc
class __$$GetNotificationsEntityImplCopyWithImpl<$Res>
    extends _$GetNotificationsEntityCopyWithImpl<$Res,
        _$GetNotificationsEntityImpl>
    implements _$$GetNotificationsEntityImplCopyWith<$Res> {
  __$$GetNotificationsEntityImplCopyWithImpl(
      _$GetNotificationsEntityImpl _value,
      $Res Function(_$GetNotificationsEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetNotificationsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? meta = null,
    Object? data = null,
  }) {
    return _then(_$GetNotificationsEntityImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as NotificaitonMetaEntity,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NotificationEntity>,
    ));
  }
}

/// @nodoc

class _$GetNotificationsEntityImpl implements _GetNotificationsEntity {
  _$GetNotificationsEntityImpl(
      {required this.status,
      required this.meta,
      required final List<NotificationEntity> data})
      : _data = data;

  @override
  final String status;
  @override
  final NotificaitonMetaEntity meta;
  final List<NotificationEntity> _data;
  @override
  List<NotificationEntity> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'GetNotificationsEntity(status: $status, meta: $meta, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNotificationsEntityImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, meta, const DeepCollectionEquality().hash(_data));

  /// Create a copy of GetNotificationsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNotificationsEntityImplCopyWith<_$GetNotificationsEntityImpl>
      get copyWith => __$$GetNotificationsEntityImplCopyWithImpl<
          _$GetNotificationsEntityImpl>(this, _$identity);
}

abstract class _GetNotificationsEntity implements GetNotificationsEntity {
  factory _GetNotificationsEntity(
          {required final String status,
          required final NotificaitonMetaEntity meta,
          required final List<NotificationEntity> data}) =
      _$GetNotificationsEntityImpl;

  @override
  String get status;
  @override
  NotificaitonMetaEntity get meta;
  @override
  List<NotificationEntity> get data;

  /// Create a copy of GetNotificationsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetNotificationsEntityImplCopyWith<_$GetNotificationsEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
