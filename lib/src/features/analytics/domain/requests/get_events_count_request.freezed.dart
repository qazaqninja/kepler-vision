// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_events_count_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetEventsCountRequest _$GetEventsCountRequestFromJson(
    Map<String, dynamic> json) {
  return _GetEventsCountRequest.fromJson(json);
}

/// @nodoc
mixin _$GetEventsCountRequest {
  @JsonKey(name: 'school_id')
  String get schoolId => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  DateTime? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  DateTime? get endDate => throw _privateConstructorUsedError;

  /// Serializes this GetEventsCountRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetEventsCountRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetEventsCountRequestCopyWith<GetEventsCountRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetEventsCountRequestCopyWith<$Res> {
  factory $GetEventsCountRequestCopyWith(GetEventsCountRequest value,
          $Res Function(GetEventsCountRequest) then) =
      _$GetEventsCountRequestCopyWithImpl<$Res, GetEventsCountRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'school_id') String schoolId,
      @JsonKey(name: 'start_date') DateTime? startDate,
      @JsonKey(name: 'end_date') DateTime? endDate});
}

/// @nodoc
class _$GetEventsCountRequestCopyWithImpl<$Res,
        $Val extends GetEventsCountRequest>
    implements $GetEventsCountRequestCopyWith<$Res> {
  _$GetEventsCountRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetEventsCountRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolId = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_value.copyWith(
      schoolId: null == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetEventsCountRequestImplCopyWith<$Res>
    implements $GetEventsCountRequestCopyWith<$Res> {
  factory _$$GetEventsCountRequestImplCopyWith(
          _$GetEventsCountRequestImpl value,
          $Res Function(_$GetEventsCountRequestImpl) then) =
      __$$GetEventsCountRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'school_id') String schoolId,
      @JsonKey(name: 'start_date') DateTime? startDate,
      @JsonKey(name: 'end_date') DateTime? endDate});
}

/// @nodoc
class __$$GetEventsCountRequestImplCopyWithImpl<$Res>
    extends _$GetEventsCountRequestCopyWithImpl<$Res,
        _$GetEventsCountRequestImpl>
    implements _$$GetEventsCountRequestImplCopyWith<$Res> {
  __$$GetEventsCountRequestImplCopyWithImpl(_$GetEventsCountRequestImpl _value,
      $Res Function(_$GetEventsCountRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetEventsCountRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolId = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_$GetEventsCountRequestImpl(
      schoolId: null == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetEventsCountRequestImpl implements _GetEventsCountRequest {
  const _$GetEventsCountRequestImpl(
      {@JsonKey(name: 'school_id') required this.schoolId,
      @JsonKey(name: 'start_date') this.startDate,
      @JsonKey(name: 'end_date') this.endDate});

  factory _$GetEventsCountRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetEventsCountRequestImplFromJson(json);

  @override
  @JsonKey(name: 'school_id')
  final String schoolId;
  @override
  @JsonKey(name: 'start_date')
  final DateTime? startDate;
  @override
  @JsonKey(name: 'end_date')
  final DateTime? endDate;

  @override
  String toString() {
    return 'GetEventsCountRequest(schoolId: $schoolId, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEventsCountRequestImpl &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, schoolId, startDate, endDate);

  /// Create a copy of GetEventsCountRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEventsCountRequestImplCopyWith<_$GetEventsCountRequestImpl>
      get copyWith => __$$GetEventsCountRequestImplCopyWithImpl<
          _$GetEventsCountRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetEventsCountRequestImplToJson(
      this,
    );
  }
}

abstract class _GetEventsCountRequest implements GetEventsCountRequest {
  const factory _GetEventsCountRequest(
          {@JsonKey(name: 'school_id') required final String schoolId,
          @JsonKey(name: 'start_date') final DateTime? startDate,
          @JsonKey(name: 'end_date') final DateTime? endDate}) =
      _$GetEventsCountRequestImpl;

  factory _GetEventsCountRequest.fromJson(Map<String, dynamic> json) =
      _$GetEventsCountRequestImpl.fromJson;

  @override
  @JsonKey(name: 'school_id')
  String get schoolId;
  @override
  @JsonKey(name: 'start_date')
  DateTime? get startDate;
  @override
  @JsonKey(name: 'end_date')
  DateTime? get endDate;

  /// Create a copy of GetEventsCountRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetEventsCountRequestImplCopyWith<_$GetEventsCountRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
