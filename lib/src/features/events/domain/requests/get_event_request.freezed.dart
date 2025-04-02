// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_event_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetEventRequest _$GetEventRequestFromJson(Map<String, dynamic> json) {
  return _GetEventRequest.fromJson(json);
}

/// @nodoc
mixin _$GetEventRequest {
  int get schoolId => throw _privateConstructorUsedError;
  int get eventId => throw _privateConstructorUsedError;

  /// Serializes this GetEventRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetEventRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetEventRequestCopyWith<GetEventRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetEventRequestCopyWith<$Res> {
  factory $GetEventRequestCopyWith(
          GetEventRequest value, $Res Function(GetEventRequest) then) =
      _$GetEventRequestCopyWithImpl<$Res, GetEventRequest>;
  @useResult
  $Res call({int schoolId, int eventId});
}

/// @nodoc
class _$GetEventRequestCopyWithImpl<$Res, $Val extends GetEventRequest>
    implements $GetEventRequestCopyWith<$Res> {
  _$GetEventRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetEventRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolId = null,
    Object? eventId = null,
  }) {
    return _then(_value.copyWith(
      schoolId: null == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetEventRequestImplCopyWith<$Res>
    implements $GetEventRequestCopyWith<$Res> {
  factory _$$GetEventRequestImplCopyWith(_$GetEventRequestImpl value,
          $Res Function(_$GetEventRequestImpl) then) =
      __$$GetEventRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int schoolId, int eventId});
}

/// @nodoc
class __$$GetEventRequestImplCopyWithImpl<$Res>
    extends _$GetEventRequestCopyWithImpl<$Res, _$GetEventRequestImpl>
    implements _$$GetEventRequestImplCopyWith<$Res> {
  __$$GetEventRequestImplCopyWithImpl(
      _$GetEventRequestImpl _value, $Res Function(_$GetEventRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetEventRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolId = null,
    Object? eventId = null,
  }) {
    return _then(_$GetEventRequestImpl(
      schoolId: null == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetEventRequestImpl implements _GetEventRequest {
  const _$GetEventRequestImpl({required this.schoolId, required this.eventId});

  factory _$GetEventRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetEventRequestImplFromJson(json);

  @override
  final int schoolId;
  @override
  final int eventId;

  @override
  String toString() {
    return 'GetEventRequest(schoolId: $schoolId, eventId: $eventId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEventRequestImpl &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            (identical(other.eventId, eventId) || other.eventId == eventId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, schoolId, eventId);

  /// Create a copy of GetEventRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEventRequestImplCopyWith<_$GetEventRequestImpl> get copyWith =>
      __$$GetEventRequestImplCopyWithImpl<_$GetEventRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetEventRequestImplToJson(
      this,
    );
  }
}

abstract class _GetEventRequest implements GetEventRequest {
  const factory _GetEventRequest(
      {required final int schoolId,
      required final int eventId}) = _$GetEventRequestImpl;

  factory _GetEventRequest.fromJson(Map<String, dynamic> json) =
      _$GetEventRequestImpl.fromJson;

  @override
  int get schoolId;
  @override
  int get eventId;

  /// Create a copy of GetEventRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetEventRequestImplCopyWith<_$GetEventRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
