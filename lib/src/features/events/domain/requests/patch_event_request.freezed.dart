// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patch_event_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PatchEventRequest _$PatchEventRequestFromJson(Map<String, dynamic> json) {
  return _PatchEventRequest.fromJson(json);
}

/// @nodoc
mixin _$PatchEventRequest {
  @JsonKey(includeToJson: false)
  int get schoolId => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  int get eventId => throw _privateConstructorUsedError;
  EventFeedbackDestination get notificationPolicy =>
      throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<PatchEventStudentFeedbackRequest>? get studentFeedbacks =>
      throw _privateConstructorUsedError;

  /// Serializes this PatchEventRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PatchEventRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PatchEventRequestCopyWith<PatchEventRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatchEventRequestCopyWith<$Res> {
  factory $PatchEventRequestCopyWith(
          PatchEventRequest value, $Res Function(PatchEventRequest) then) =
      _$PatchEventRequestCopyWithImpl<$Res, PatchEventRequest>;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false) int schoolId,
      @JsonKey(includeToJson: false) int eventId,
      EventFeedbackDestination notificationPolicy,
      String? description,
      List<PatchEventStudentFeedbackRequest>? studentFeedbacks});
}

/// @nodoc
class _$PatchEventRequestCopyWithImpl<$Res, $Val extends PatchEventRequest>
    implements $PatchEventRequestCopyWith<$Res> {
  _$PatchEventRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PatchEventRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolId = null,
    Object? eventId = null,
    Object? notificationPolicy = null,
    Object? description = freezed,
    Object? studentFeedbacks = freezed,
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
      notificationPolicy: null == notificationPolicy
          ? _value.notificationPolicy
          : notificationPolicy // ignore: cast_nullable_to_non_nullable
              as EventFeedbackDestination,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      studentFeedbacks: freezed == studentFeedbacks
          ? _value.studentFeedbacks
          : studentFeedbacks // ignore: cast_nullable_to_non_nullable
              as List<PatchEventStudentFeedbackRequest>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatchEventRequestImplCopyWith<$Res>
    implements $PatchEventRequestCopyWith<$Res> {
  factory _$$PatchEventRequestImplCopyWith(_$PatchEventRequestImpl value,
          $Res Function(_$PatchEventRequestImpl) then) =
      __$$PatchEventRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false) int schoolId,
      @JsonKey(includeToJson: false) int eventId,
      EventFeedbackDestination notificationPolicy,
      String? description,
      List<PatchEventStudentFeedbackRequest>? studentFeedbacks});
}

/// @nodoc
class __$$PatchEventRequestImplCopyWithImpl<$Res>
    extends _$PatchEventRequestCopyWithImpl<$Res, _$PatchEventRequestImpl>
    implements _$$PatchEventRequestImplCopyWith<$Res> {
  __$$PatchEventRequestImplCopyWithImpl(_$PatchEventRequestImpl _value,
      $Res Function(_$PatchEventRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of PatchEventRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolId = null,
    Object? eventId = null,
    Object? notificationPolicy = null,
    Object? description = freezed,
    Object? studentFeedbacks = freezed,
  }) {
    return _then(_$PatchEventRequestImpl(
      schoolId: null == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int,
      notificationPolicy: null == notificationPolicy
          ? _value.notificationPolicy
          : notificationPolicy // ignore: cast_nullable_to_non_nullable
              as EventFeedbackDestination,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      studentFeedbacks: freezed == studentFeedbacks
          ? _value._studentFeedbacks
          : studentFeedbacks // ignore: cast_nullable_to_non_nullable
              as List<PatchEventStudentFeedbackRequest>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$PatchEventRequestImpl implements _PatchEventRequest {
  const _$PatchEventRequestImpl(
      {@JsonKey(includeToJson: false) required this.schoolId,
      @JsonKey(includeToJson: false) required this.eventId,
      required this.notificationPolicy,
      this.description,
      final List<PatchEventStudentFeedbackRequest>? studentFeedbacks})
      : _studentFeedbacks = studentFeedbacks;

  factory _$PatchEventRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatchEventRequestImplFromJson(json);

  @override
  @JsonKey(includeToJson: false)
  final int schoolId;
  @override
  @JsonKey(includeToJson: false)
  final int eventId;
  @override
  final EventFeedbackDestination notificationPolicy;
  @override
  final String? description;
  final List<PatchEventStudentFeedbackRequest>? _studentFeedbacks;
  @override
  List<PatchEventStudentFeedbackRequest>? get studentFeedbacks {
    final value = _studentFeedbacks;
    if (value == null) return null;
    if (_studentFeedbacks is EqualUnmodifiableListView)
      return _studentFeedbacks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PatchEventRequest(schoolId: $schoolId, eventId: $eventId, notificationPolicy: $notificationPolicy, description: $description, studentFeedbacks: $studentFeedbacks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatchEventRequestImpl &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.notificationPolicy, notificationPolicy) ||
                other.notificationPolicy == notificationPolicy) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._studentFeedbacks, _studentFeedbacks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      schoolId,
      eventId,
      notificationPolicy,
      description,
      const DeepCollectionEquality().hash(_studentFeedbacks));

  /// Create a copy of PatchEventRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PatchEventRequestImplCopyWith<_$PatchEventRequestImpl> get copyWith =>
      __$$PatchEventRequestImplCopyWithImpl<_$PatchEventRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatchEventRequestImplToJson(
      this,
    );
  }
}

abstract class _PatchEventRequest implements PatchEventRequest {
  const factory _PatchEventRequest(
          {@JsonKey(includeToJson: false) required final int schoolId,
          @JsonKey(includeToJson: false) required final int eventId,
          required final EventFeedbackDestination notificationPolicy,
          final String? description,
          final List<PatchEventStudentFeedbackRequest>? studentFeedbacks}) =
      _$PatchEventRequestImpl;

  factory _PatchEventRequest.fromJson(Map<String, dynamic> json) =
      _$PatchEventRequestImpl.fromJson;

  @override
  @JsonKey(includeToJson: false)
  int get schoolId;
  @override
  @JsonKey(includeToJson: false)
  int get eventId;
  @override
  EventFeedbackDestination get notificationPolicy;
  @override
  String? get description;
  @override
  List<PatchEventStudentFeedbackRequest>? get studentFeedbacks;

  /// Create a copy of PatchEventRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PatchEventRequestImplCopyWith<_$PatchEventRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
