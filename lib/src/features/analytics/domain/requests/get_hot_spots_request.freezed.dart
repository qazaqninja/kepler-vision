// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_hot_spots_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetHotSpotsRequest _$GetHotSpotsRequestFromJson(Map<String, dynamic> json) {
  return _GetHotSpotsRequest.fromJson(json);
}

/// @nodoc
mixin _$GetHotSpotsRequest {
  @JsonKey(name: 'school_id')
  String get schoolId => throw _privateConstructorUsedError;

  /// Serializes this GetHotSpotsRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetHotSpotsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetHotSpotsRequestCopyWith<GetHotSpotsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetHotSpotsRequestCopyWith<$Res> {
  factory $GetHotSpotsRequestCopyWith(
          GetHotSpotsRequest value, $Res Function(GetHotSpotsRequest) then) =
      _$GetHotSpotsRequestCopyWithImpl<$Res, GetHotSpotsRequest>;
  @useResult
  $Res call({@JsonKey(name: 'school_id') String schoolId});
}

/// @nodoc
class _$GetHotSpotsRequestCopyWithImpl<$Res, $Val extends GetHotSpotsRequest>
    implements $GetHotSpotsRequestCopyWith<$Res> {
  _$GetHotSpotsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetHotSpotsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolId = null,
  }) {
    return _then(_value.copyWith(
      schoolId: null == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetHotSpotsRequestImplCopyWith<$Res>
    implements $GetHotSpotsRequestCopyWith<$Res> {
  factory _$$GetHotSpotsRequestImplCopyWith(_$GetHotSpotsRequestImpl value,
          $Res Function(_$GetHotSpotsRequestImpl) then) =
      __$$GetHotSpotsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'school_id') String schoolId});
}

/// @nodoc
class __$$GetHotSpotsRequestImplCopyWithImpl<$Res>
    extends _$GetHotSpotsRequestCopyWithImpl<$Res, _$GetHotSpotsRequestImpl>
    implements _$$GetHotSpotsRequestImplCopyWith<$Res> {
  __$$GetHotSpotsRequestImplCopyWithImpl(_$GetHotSpotsRequestImpl _value,
      $Res Function(_$GetHotSpotsRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetHotSpotsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolId = null,
  }) {
    return _then(_$GetHotSpotsRequestImpl(
      schoolId: null == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetHotSpotsRequestImpl implements _GetHotSpotsRequest {
  _$GetHotSpotsRequestImpl(
      {@JsonKey(name: 'school_id') required this.schoolId});

  factory _$GetHotSpotsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetHotSpotsRequestImplFromJson(json);

  @override
  @JsonKey(name: 'school_id')
  final String schoolId;

  @override
  String toString() {
    return 'GetHotSpotsRequest(schoolId: $schoolId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetHotSpotsRequestImpl &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, schoolId);

  /// Create a copy of GetHotSpotsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetHotSpotsRequestImplCopyWith<_$GetHotSpotsRequestImpl> get copyWith =>
      __$$GetHotSpotsRequestImplCopyWithImpl<_$GetHotSpotsRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetHotSpotsRequestImplToJson(
      this,
    );
  }
}

abstract class _GetHotSpotsRequest implements GetHotSpotsRequest {
  factory _GetHotSpotsRequest(
          {@JsonKey(name: 'school_id') required final String schoolId}) =
      _$GetHotSpotsRequestImpl;

  factory _GetHotSpotsRequest.fromJson(Map<String, dynamic> json) =
      _$GetHotSpotsRequestImpl.fromJson;

  @override
  @JsonKey(name: 'school_id')
  String get schoolId;

  /// Create a copy of GetHotSpotsRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetHotSpotsRequestImplCopyWith<_$GetHotSpotsRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
