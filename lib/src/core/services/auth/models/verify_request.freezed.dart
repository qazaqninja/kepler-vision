// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifyRequest _$VerifyRequestFromJson(Map<String, dynamic> json) {
  return _VerifyRequest.fromJson(json);
}

/// @nodoc
mixin _$VerifyRequest {
  String get userId => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  /// Serializes this VerifyRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VerifyRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerifyRequestCopyWith<VerifyRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyRequestCopyWith<$Res> {
  factory $VerifyRequestCopyWith(
          VerifyRequest value, $Res Function(VerifyRequest) then) =
      _$VerifyRequestCopyWithImpl<$Res, VerifyRequest>;
  @useResult
  $Res call({String userId, String code});
}

/// @nodoc
class _$VerifyRequestCopyWithImpl<$Res, $Val extends VerifyRequest>
    implements $VerifyRequestCopyWith<$Res> {
  _$VerifyRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerifyRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyRequestImplCopyWith<$Res>
    implements $VerifyRequestCopyWith<$Res> {
  factory _$$VerifyRequestImplCopyWith(
          _$VerifyRequestImpl value, $Res Function(_$VerifyRequestImpl) then) =
      __$$VerifyRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String code});
}

/// @nodoc
class __$$VerifyRequestImplCopyWithImpl<$Res>
    extends _$VerifyRequestCopyWithImpl<$Res, _$VerifyRequestImpl>
    implements _$$VerifyRequestImplCopyWith<$Res> {
  __$$VerifyRequestImplCopyWithImpl(
      _$VerifyRequestImpl _value, $Res Function(_$VerifyRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerifyRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? code = null,
  }) {
    return _then(_$VerifyRequestImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyRequestImpl implements _VerifyRequest {
  const _$VerifyRequestImpl({required this.userId, required this.code});

  factory _$VerifyRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyRequestImplFromJson(json);

  @override
  final String userId;
  @override
  final String code;

  @override
  String toString() {
    return 'VerifyRequest(userId: $userId, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, code);

  /// Create a copy of VerifyRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyRequestImplCopyWith<_$VerifyRequestImpl> get copyWith =>
      __$$VerifyRequestImplCopyWithImpl<_$VerifyRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyRequestImplToJson(
      this,
    );
  }
}

abstract class _VerifyRequest implements VerifyRequest {
  const factory _VerifyRequest(
      {required final String userId,
      required final String code}) = _$VerifyRequestImpl;

  factory _VerifyRequest.fromJson(Map<String, dynamic> json) =
      _$VerifyRequestImpl.fromJson;

  @override
  String get userId;
  @override
  String get code;

  /// Create a copy of VerifyRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyRequestImplCopyWith<_$VerifyRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
