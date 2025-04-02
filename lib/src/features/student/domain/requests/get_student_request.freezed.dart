// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_student_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetStudentRequest _$GetStudentRequestFromJson(Map<String, dynamic> json) {
  return _GetStudentRequest.fromJson(json);
}

/// @nodoc
mixin _$GetStudentRequest {
  @JsonKey(name: 'school_id')
  String get schoolId => throw _privateConstructorUsedError;

  /// Serializes this GetStudentRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetStudentRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetStudentRequestCopyWith<GetStudentRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetStudentRequestCopyWith<$Res> {
  factory $GetStudentRequestCopyWith(
          GetStudentRequest value, $Res Function(GetStudentRequest) then) =
      _$GetStudentRequestCopyWithImpl<$Res, GetStudentRequest>;
  @useResult
  $Res call({@JsonKey(name: 'school_id') String schoolId});
}

/// @nodoc
class _$GetStudentRequestCopyWithImpl<$Res, $Val extends GetStudentRequest>
    implements $GetStudentRequestCopyWith<$Res> {
  _$GetStudentRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetStudentRequest
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
abstract class _$$GetStudentRequestImplCopyWith<$Res>
    implements $GetStudentRequestCopyWith<$Res> {
  factory _$$GetStudentRequestImplCopyWith(_$GetStudentRequestImpl value,
          $Res Function(_$GetStudentRequestImpl) then) =
      __$$GetStudentRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'school_id') String schoolId});
}

/// @nodoc
class __$$GetStudentRequestImplCopyWithImpl<$Res>
    extends _$GetStudentRequestCopyWithImpl<$Res, _$GetStudentRequestImpl>
    implements _$$GetStudentRequestImplCopyWith<$Res> {
  __$$GetStudentRequestImplCopyWithImpl(_$GetStudentRequestImpl _value,
      $Res Function(_$GetStudentRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetStudentRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolId = null,
  }) {
    return _then(_$GetStudentRequestImpl(
      schoolId: null == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetStudentRequestImpl implements _GetStudentRequest {
  const _$GetStudentRequestImpl(
      {@JsonKey(name: 'school_id') required this.schoolId});

  factory _$GetStudentRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetStudentRequestImplFromJson(json);

  @override
  @JsonKey(name: 'school_id')
  final String schoolId;

  @override
  String toString() {
    return 'GetStudentRequest(schoolId: $schoolId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStudentRequestImpl &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, schoolId);

  /// Create a copy of GetStudentRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStudentRequestImplCopyWith<_$GetStudentRequestImpl> get copyWith =>
      __$$GetStudentRequestImplCopyWithImpl<_$GetStudentRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetStudentRequestImplToJson(
      this,
    );
  }
}

abstract class _GetStudentRequest implements GetStudentRequest {
  const factory _GetStudentRequest(
          {@JsonKey(name: 'school_id') required final String schoolId}) =
      _$GetStudentRequestImpl;

  factory _GetStudentRequest.fromJson(Map<String, dynamic> json) =
      _$GetStudentRequestImpl.fromJson;

  @override
  @JsonKey(name: 'school_id')
  String get schoolId;

  /// Create a copy of GetStudentRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetStudentRequestImplCopyWith<_$GetStudentRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
