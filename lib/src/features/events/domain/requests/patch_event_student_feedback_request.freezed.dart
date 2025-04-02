// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patch_event_student_feedback_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PatchEventStudentFeedbackRequest _$PatchEventStudentFeedbackRequestFromJson(
    Map<String, dynamic> json) {
  return _PatchEventStudentFeedbackRequest.fromJson(json);
}

/// @nodoc
mixin _$PatchEventStudentFeedbackRequest {
  int get studentId => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this PatchEventStudentFeedbackRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PatchEventStudentFeedbackRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PatchEventStudentFeedbackRequestCopyWith<PatchEventStudentFeedbackRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatchEventStudentFeedbackRequestCopyWith<$Res> {
  factory $PatchEventStudentFeedbackRequestCopyWith(
          PatchEventStudentFeedbackRequest value,
          $Res Function(PatchEventStudentFeedbackRequest) then) =
      _$PatchEventStudentFeedbackRequestCopyWithImpl<$Res,
          PatchEventStudentFeedbackRequest>;
  @useResult
  $Res call({int studentId, String description});
}

/// @nodoc
class _$PatchEventStudentFeedbackRequestCopyWithImpl<$Res,
        $Val extends PatchEventStudentFeedbackRequest>
    implements $PatchEventStudentFeedbackRequestCopyWith<$Res> {
  _$PatchEventStudentFeedbackRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PatchEventStudentFeedbackRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatchEventStudentFeedbackRequestImplCopyWith<$Res>
    implements $PatchEventStudentFeedbackRequestCopyWith<$Res> {
  factory _$$PatchEventStudentFeedbackRequestImplCopyWith(
          _$PatchEventStudentFeedbackRequestImpl value,
          $Res Function(_$PatchEventStudentFeedbackRequestImpl) then) =
      __$$PatchEventStudentFeedbackRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int studentId, String description});
}

/// @nodoc
class __$$PatchEventStudentFeedbackRequestImplCopyWithImpl<$Res>
    extends _$PatchEventStudentFeedbackRequestCopyWithImpl<$Res,
        _$PatchEventStudentFeedbackRequestImpl>
    implements _$$PatchEventStudentFeedbackRequestImplCopyWith<$Res> {
  __$$PatchEventStudentFeedbackRequestImplCopyWithImpl(
      _$PatchEventStudentFeedbackRequestImpl _value,
      $Res Function(_$PatchEventStudentFeedbackRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of PatchEventStudentFeedbackRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = null,
    Object? description = null,
  }) {
    return _then(_$PatchEventStudentFeedbackRequestImpl(
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatchEventStudentFeedbackRequestImpl
    implements _PatchEventStudentFeedbackRequest {
  const _$PatchEventStudentFeedbackRequestImpl(
      {required this.studentId, required this.description});

  factory _$PatchEventStudentFeedbackRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PatchEventStudentFeedbackRequestImplFromJson(json);

  @override
  final int studentId;
  @override
  final String description;

  @override
  String toString() {
    return 'PatchEventStudentFeedbackRequest(studentId: $studentId, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatchEventStudentFeedbackRequestImpl &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, studentId, description);

  /// Create a copy of PatchEventStudentFeedbackRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PatchEventStudentFeedbackRequestImplCopyWith<
          _$PatchEventStudentFeedbackRequestImpl>
      get copyWith => __$$PatchEventStudentFeedbackRequestImplCopyWithImpl<
          _$PatchEventStudentFeedbackRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatchEventStudentFeedbackRequestImplToJson(
      this,
    );
  }
}

abstract class _PatchEventStudentFeedbackRequest
    implements PatchEventStudentFeedbackRequest {
  const factory _PatchEventStudentFeedbackRequest(
          {required final int studentId, required final String description}) =
      _$PatchEventStudentFeedbackRequestImpl;

  factory _PatchEventStudentFeedbackRequest.fromJson(
          Map<String, dynamic> json) =
      _$PatchEventStudentFeedbackRequestImpl.fromJson;

  @override
  int get studentId;
  @override
  String get description;

  /// Create a copy of PatchEventStudentFeedbackRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PatchEventStudentFeedbackRequestImplCopyWith<
          _$PatchEventStudentFeedbackRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
