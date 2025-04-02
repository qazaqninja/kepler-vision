// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_problem_classes_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetProblemClassesRequest _$GetProblemClassesRequestFromJson(
    Map<String, dynamic> json) {
  return _GetProblemClassesRequest.fromJson(json);
}

/// @nodoc
mixin _$GetProblemClassesRequest {
  @JsonKey(name: 'school_id')
  String get schoolId => throw _privateConstructorUsedError;

  /// Serializes this GetProblemClassesRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetProblemClassesRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetProblemClassesRequestCopyWith<GetProblemClassesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProblemClassesRequestCopyWith<$Res> {
  factory $GetProblemClassesRequestCopyWith(GetProblemClassesRequest value,
          $Res Function(GetProblemClassesRequest) then) =
      _$GetProblemClassesRequestCopyWithImpl<$Res, GetProblemClassesRequest>;
  @useResult
  $Res call({@JsonKey(name: 'school_id') String schoolId});
}

/// @nodoc
class _$GetProblemClassesRequestCopyWithImpl<$Res,
        $Val extends GetProblemClassesRequest>
    implements $GetProblemClassesRequestCopyWith<$Res> {
  _$GetProblemClassesRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetProblemClassesRequest
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
abstract class _$$GetProblemClassesRequestImplCopyWith<$Res>
    implements $GetProblemClassesRequestCopyWith<$Res> {
  factory _$$GetProblemClassesRequestImplCopyWith(
          _$GetProblemClassesRequestImpl value,
          $Res Function(_$GetProblemClassesRequestImpl) then) =
      __$$GetProblemClassesRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'school_id') String schoolId});
}

/// @nodoc
class __$$GetProblemClassesRequestImplCopyWithImpl<$Res>
    extends _$GetProblemClassesRequestCopyWithImpl<$Res,
        _$GetProblemClassesRequestImpl>
    implements _$$GetProblemClassesRequestImplCopyWith<$Res> {
  __$$GetProblemClassesRequestImplCopyWithImpl(
      _$GetProblemClassesRequestImpl _value,
      $Res Function(_$GetProblemClassesRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetProblemClassesRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolId = null,
  }) {
    return _then(_$GetProblemClassesRequestImpl(
      schoolId: null == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetProblemClassesRequestImpl implements _GetProblemClassesRequest {
  _$GetProblemClassesRequestImpl(
      {@JsonKey(name: 'school_id') required this.schoolId});

  factory _$GetProblemClassesRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetProblemClassesRequestImplFromJson(json);

  @override
  @JsonKey(name: 'school_id')
  final String schoolId;

  @override
  String toString() {
    return 'GetProblemClassesRequest(schoolId: $schoolId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProblemClassesRequestImpl &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, schoolId);

  /// Create a copy of GetProblemClassesRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProblemClassesRequestImplCopyWith<_$GetProblemClassesRequestImpl>
      get copyWith => __$$GetProblemClassesRequestImplCopyWithImpl<
          _$GetProblemClassesRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetProblemClassesRequestImplToJson(
      this,
    );
  }
}

abstract class _GetProblemClassesRequest implements GetProblemClassesRequest {
  factory _GetProblemClassesRequest(
          {@JsonKey(name: 'school_id') required final String schoolId}) =
      _$GetProblemClassesRequestImpl;

  factory _GetProblemClassesRequest.fromJson(Map<String, dynamic> json) =
      _$GetProblemClassesRequestImpl.fromJson;

  @override
  @JsonKey(name: 'school_id')
  String get schoolId;

  /// Create a copy of GetProblemClassesRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetProblemClassesRequestImplCopyWith<_$GetProblemClassesRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
