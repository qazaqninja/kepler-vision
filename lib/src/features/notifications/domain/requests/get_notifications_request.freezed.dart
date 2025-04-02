// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_notifications_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetNotificationsRequest _$GetNotificationsRequestFromJson(
    Map<String, dynamic> json) {
  return _GetNotificationsRequest.fromJson(json);
}

/// @nodoc
mixin _$GetNotificationsRequest {
  String get role => throw _privateConstructorUsedError;
  String? get cursor => throw _privateConstructorUsedError;
  String? get limit => throw _privateConstructorUsedError;

  /// Serializes this GetNotificationsRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetNotificationsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetNotificationsRequestCopyWith<GetNotificationsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetNotificationsRequestCopyWith<$Res> {
  factory $GetNotificationsRequestCopyWith(GetNotificationsRequest value,
          $Res Function(GetNotificationsRequest) then) =
      _$GetNotificationsRequestCopyWithImpl<$Res, GetNotificationsRequest>;
  @useResult
  $Res call({String role, String? cursor, String? limit});
}

/// @nodoc
class _$GetNotificationsRequestCopyWithImpl<$Res,
        $Val extends GetNotificationsRequest>
    implements $GetNotificationsRequestCopyWith<$Res> {
  _$GetNotificationsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetNotificationsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? cursor = freezed,
    Object? limit = freezed,
  }) {
    return _then(_value.copyWith(
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      cursor: freezed == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as String?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetNotificationsRequestImplCopyWith<$Res>
    implements $GetNotificationsRequestCopyWith<$Res> {
  factory _$$GetNotificationsRequestImplCopyWith(
          _$GetNotificationsRequestImpl value,
          $Res Function(_$GetNotificationsRequestImpl) then) =
      __$$GetNotificationsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String role, String? cursor, String? limit});
}

/// @nodoc
class __$$GetNotificationsRequestImplCopyWithImpl<$Res>
    extends _$GetNotificationsRequestCopyWithImpl<$Res,
        _$GetNotificationsRequestImpl>
    implements _$$GetNotificationsRequestImplCopyWith<$Res> {
  __$$GetNotificationsRequestImplCopyWithImpl(
      _$GetNotificationsRequestImpl _value,
      $Res Function(_$GetNotificationsRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetNotificationsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? cursor = freezed,
    Object? limit = freezed,
  }) {
    return _then(_$GetNotificationsRequestImpl(
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      cursor: freezed == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as String?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetNotificationsRequestImpl implements _GetNotificationsRequest {
  const _$GetNotificationsRequestImpl(
      {required this.role, this.cursor, this.limit});

  factory _$GetNotificationsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetNotificationsRequestImplFromJson(json);

  @override
  final String role;
  @override
  final String? cursor;
  @override
  final String? limit;

  @override
  String toString() {
    return 'GetNotificationsRequest(role: $role, cursor: $cursor, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNotificationsRequestImpl &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.cursor, cursor) || other.cursor == cursor) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, role, cursor, limit);

  /// Create a copy of GetNotificationsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNotificationsRequestImplCopyWith<_$GetNotificationsRequestImpl>
      get copyWith => __$$GetNotificationsRequestImplCopyWithImpl<
          _$GetNotificationsRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetNotificationsRequestImplToJson(
      this,
    );
  }
}

abstract class _GetNotificationsRequest implements GetNotificationsRequest {
  const factory _GetNotificationsRequest(
      {required final String role,
      final String? cursor,
      final String? limit}) = _$GetNotificationsRequestImpl;

  factory _GetNotificationsRequest.fromJson(Map<String, dynamic> json) =
      _$GetNotificationsRequestImpl.fromJson;

  @override
  String get role;
  @override
  String? get cursor;
  @override
  String? get limit;

  /// Create a copy of GetNotificationsRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetNotificationsRequestImplCopyWith<_$GetNotificationsRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
