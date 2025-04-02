// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_events_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetEventsRequest _$GetEventsRequestFromJson(Map<String, dynamic> json) {
  return _GetEventsRequest.fromJson(json);
}

/// @nodoc
mixin _$GetEventsRequest {
  int get schoolId => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  EventStatus? get status => throw _privateConstructorUsedError;
  String? get processedStatus => throw _privateConstructorUsedError;

  /// Serializes this GetEventsRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetEventsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetEventsRequestCopyWith<GetEventsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetEventsRequestCopyWith<$Res> {
  factory $GetEventsRequestCopyWith(
          GetEventsRequest value, $Res Function(GetEventsRequest) then) =
      _$GetEventsRequestCopyWithImpl<$Res, GetEventsRequest>;
  @useResult
  $Res call(
      {int schoolId,
      int? limit,
      DateTime? startDate,
      DateTime? endDate,
      EventStatus? status,
      String? processedStatus});
}

/// @nodoc
class _$GetEventsRequestCopyWithImpl<$Res, $Val extends GetEventsRequest>
    implements $GetEventsRequestCopyWith<$Res> {
  _$GetEventsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetEventsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolId = null,
    Object? limit = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? status = freezed,
    Object? processedStatus = freezed,
  }) {
    return _then(_value.copyWith(
      schoolId: null == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EventStatus?,
      processedStatus: freezed == processedStatus
          ? _value.processedStatus
          : processedStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetEventsRequestImplCopyWith<$Res>
    implements $GetEventsRequestCopyWith<$Res> {
  factory _$$GetEventsRequestImplCopyWith(_$GetEventsRequestImpl value,
          $Res Function(_$GetEventsRequestImpl) then) =
      __$$GetEventsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int schoolId,
      int? limit,
      DateTime? startDate,
      DateTime? endDate,
      EventStatus? status,
      String? processedStatus});
}

/// @nodoc
class __$$GetEventsRequestImplCopyWithImpl<$Res>
    extends _$GetEventsRequestCopyWithImpl<$Res, _$GetEventsRequestImpl>
    implements _$$GetEventsRequestImplCopyWith<$Res> {
  __$$GetEventsRequestImplCopyWithImpl(_$GetEventsRequestImpl _value,
      $Res Function(_$GetEventsRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetEventsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolId = null,
    Object? limit = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? status = freezed,
    Object? processedStatus = freezed,
  }) {
    return _then(_$GetEventsRequestImpl(
      schoolId: null == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EventStatus?,
      processedStatus: freezed == processedStatus
          ? _value.processedStatus
          : processedStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetEventsRequestImpl implements _GetEventsRequest {
  const _$GetEventsRequestImpl(
      {required this.schoolId,
      this.limit,
      this.startDate,
      this.endDate,
      this.status,
      this.processedStatus});

  factory _$GetEventsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetEventsRequestImplFromJson(json);

  @override
  final int schoolId;
  @override
  final int? limit;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final EventStatus? status;
  @override
  final String? processedStatus;

  @override
  String toString() {
    return 'GetEventsRequest(schoolId: $schoolId, limit: $limit, startDate: $startDate, endDate: $endDate, status: $status, processedStatus: $processedStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEventsRequestImpl &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.processedStatus, processedStatus) ||
                other.processedStatus == processedStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, schoolId, limit, startDate,
      endDate, status, processedStatus);

  /// Create a copy of GetEventsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEventsRequestImplCopyWith<_$GetEventsRequestImpl> get copyWith =>
      __$$GetEventsRequestImplCopyWithImpl<_$GetEventsRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetEventsRequestImplToJson(
      this,
    );
  }
}

abstract class _GetEventsRequest implements GetEventsRequest {
  const factory _GetEventsRequest(
      {required final int schoolId,
      final int? limit,
      final DateTime? startDate,
      final DateTime? endDate,
      final EventStatus? status,
      final String? processedStatus}) = _$GetEventsRequestImpl;

  factory _GetEventsRequest.fromJson(Map<String, dynamic> json) =
      _$GetEventsRequestImpl.fromJson;

  @override
  int get schoolId;
  @override
  int? get limit;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  EventStatus? get status;
  @override
  String? get processedStatus;

  /// Create a copy of GetEventsRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetEventsRequestImplCopyWith<_$GetEventsRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
