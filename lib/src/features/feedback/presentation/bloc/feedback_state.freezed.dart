// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feedback_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FeedbackState {
  int get eventId => throw _privateConstructorUsedError;
  EventEntity? get event => throw _privateConstructorUsedError;
  List<SuspectEntity> get suspects => throw _privateConstructorUsedError;
  List<SuspectEntity>? get searchUsers => throw _privateConstructorUsedError;
  EventFeedbackDestination get destination =>
      throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get aiAnalysisCount => throw _privateConstructorUsedError;
  bool get aiAnalysisInProgress => throw _privateConstructorUsedError;
  FeedbackSubmitState get submitState => throw _privateConstructorUsedError;
  FeedbackSubmitState get voiceProcessingState =>
      throw _privateConstructorUsedError;
  FeedbackTeacherState get teacherState => throw _privateConstructorUsedError;

  /// Create a copy of FeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedbackStateCopyWith<FeedbackState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackStateCopyWith<$Res> {
  factory $FeedbackStateCopyWith(
          FeedbackState value, $Res Function(FeedbackState) then) =
      _$FeedbackStateCopyWithImpl<$Res, FeedbackState>;
  @useResult
  $Res call(
      {int eventId,
      EventEntity? event,
      List<SuspectEntity> suspects,
      List<SuspectEntity>? searchUsers,
      EventFeedbackDestination destination,
      String description,
      int aiAnalysisCount,
      bool aiAnalysisInProgress,
      FeedbackSubmitState submitState,
      FeedbackSubmitState voiceProcessingState,
      FeedbackTeacherState teacherState});

  $EventEntityCopyWith<$Res>? get event;
  $FeedbackSubmitStateCopyWith<$Res> get submitState;
  $FeedbackSubmitStateCopyWith<$Res> get voiceProcessingState;
  $FeedbackTeacherStateCopyWith<$Res> get teacherState;
}

/// @nodoc
class _$FeedbackStateCopyWithImpl<$Res, $Val extends FeedbackState>
    implements $FeedbackStateCopyWith<$Res> {
  _$FeedbackStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? event = freezed,
    Object? suspects = null,
    Object? searchUsers = freezed,
    Object? destination = null,
    Object? description = null,
    Object? aiAnalysisCount = null,
    Object? aiAnalysisInProgress = null,
    Object? submitState = null,
    Object? voiceProcessingState = null,
    Object? teacherState = null,
  }) {
    return _then(_value.copyWith(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int,
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventEntity?,
      suspects: null == suspects
          ? _value.suspects
          : suspects // ignore: cast_nullable_to_non_nullable
              as List<SuspectEntity>,
      searchUsers: freezed == searchUsers
          ? _value.searchUsers
          : searchUsers // ignore: cast_nullable_to_non_nullable
              as List<SuspectEntity>?,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as EventFeedbackDestination,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      aiAnalysisCount: null == aiAnalysisCount
          ? _value.aiAnalysisCount
          : aiAnalysisCount // ignore: cast_nullable_to_non_nullable
              as int,
      aiAnalysisInProgress: null == aiAnalysisInProgress
          ? _value.aiAnalysisInProgress
          : aiAnalysisInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      submitState: null == submitState
          ? _value.submitState
          : submitState // ignore: cast_nullable_to_non_nullable
              as FeedbackSubmitState,
      voiceProcessingState: null == voiceProcessingState
          ? _value.voiceProcessingState
          : voiceProcessingState // ignore: cast_nullable_to_non_nullable
              as FeedbackSubmitState,
      teacherState: null == teacherState
          ? _value.teacherState
          : teacherState // ignore: cast_nullable_to_non_nullable
              as FeedbackTeacherState,
    ) as $Val);
  }

  /// Create a copy of FeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EventEntityCopyWith<$Res>? get event {
    if (_value.event == null) {
      return null;
    }

    return $EventEntityCopyWith<$Res>(_value.event!, (value) {
      return _then(_value.copyWith(event: value) as $Val);
    });
  }

  /// Create a copy of FeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeedbackSubmitStateCopyWith<$Res> get submitState {
    return $FeedbackSubmitStateCopyWith<$Res>(_value.submitState, (value) {
      return _then(_value.copyWith(submitState: value) as $Val);
    });
  }

  /// Create a copy of FeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeedbackSubmitStateCopyWith<$Res> get voiceProcessingState {
    return $FeedbackSubmitStateCopyWith<$Res>(_value.voiceProcessingState,
        (value) {
      return _then(_value.copyWith(voiceProcessingState: value) as $Val);
    });
  }

  /// Create a copy of FeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeedbackTeacherStateCopyWith<$Res> get teacherState {
    return $FeedbackTeacherStateCopyWith<$Res>(_value.teacherState, (value) {
      return _then(_value.copyWith(teacherState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FeedbackStateImplCopyWith<$Res>
    implements $FeedbackStateCopyWith<$Res> {
  factory _$$FeedbackStateImplCopyWith(
          _$FeedbackStateImpl value, $Res Function(_$FeedbackStateImpl) then) =
      __$$FeedbackStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int eventId,
      EventEntity? event,
      List<SuspectEntity> suspects,
      List<SuspectEntity>? searchUsers,
      EventFeedbackDestination destination,
      String description,
      int aiAnalysisCount,
      bool aiAnalysisInProgress,
      FeedbackSubmitState submitState,
      FeedbackSubmitState voiceProcessingState,
      FeedbackTeacherState teacherState});

  @override
  $EventEntityCopyWith<$Res>? get event;
  @override
  $FeedbackSubmitStateCopyWith<$Res> get submitState;
  @override
  $FeedbackSubmitStateCopyWith<$Res> get voiceProcessingState;
  @override
  $FeedbackTeacherStateCopyWith<$Res> get teacherState;
}

/// @nodoc
class __$$FeedbackStateImplCopyWithImpl<$Res>
    extends _$FeedbackStateCopyWithImpl<$Res, _$FeedbackStateImpl>
    implements _$$FeedbackStateImplCopyWith<$Res> {
  __$$FeedbackStateImplCopyWithImpl(
      _$FeedbackStateImpl _value, $Res Function(_$FeedbackStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? event = freezed,
    Object? suspects = null,
    Object? searchUsers = freezed,
    Object? destination = null,
    Object? description = null,
    Object? aiAnalysisCount = null,
    Object? aiAnalysisInProgress = null,
    Object? submitState = null,
    Object? voiceProcessingState = null,
    Object? teacherState = null,
  }) {
    return _then(_$FeedbackStateImpl(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int,
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventEntity?,
      suspects: null == suspects
          ? _value._suspects
          : suspects // ignore: cast_nullable_to_non_nullable
              as List<SuspectEntity>,
      searchUsers: freezed == searchUsers
          ? _value._searchUsers
          : searchUsers // ignore: cast_nullable_to_non_nullable
              as List<SuspectEntity>?,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as EventFeedbackDestination,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      aiAnalysisCount: null == aiAnalysisCount
          ? _value.aiAnalysisCount
          : aiAnalysisCount // ignore: cast_nullable_to_non_nullable
              as int,
      aiAnalysisInProgress: null == aiAnalysisInProgress
          ? _value.aiAnalysisInProgress
          : aiAnalysisInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      submitState: null == submitState
          ? _value.submitState
          : submitState // ignore: cast_nullable_to_non_nullable
              as FeedbackSubmitState,
      voiceProcessingState: null == voiceProcessingState
          ? _value.voiceProcessingState
          : voiceProcessingState // ignore: cast_nullable_to_non_nullable
              as FeedbackSubmitState,
      teacherState: null == teacherState
          ? _value.teacherState
          : teacherState // ignore: cast_nullable_to_non_nullable
              as FeedbackTeacherState,
    ));
  }
}

/// @nodoc

class _$FeedbackStateImpl implements _FeedbackState {
  _$FeedbackStateImpl(
      {required this.eventId,
      this.event,
      final List<SuspectEntity> suspects = const [],
      final List<SuspectEntity>? searchUsers = const [],
      this.destination = EventFeedbackDestination.parent,
      this.description = "",
      this.aiAnalysisCount = 3,
      this.aiAnalysisInProgress = false,
      required this.submitState,
      required this.voiceProcessingState,
      required this.teacherState})
      : _suspects = suspects,
        _searchUsers = searchUsers;

  @override
  final int eventId;
  @override
  final EventEntity? event;
  final List<SuspectEntity> _suspects;
  @override
  @JsonKey()
  List<SuspectEntity> get suspects {
    if (_suspects is EqualUnmodifiableListView) return _suspects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suspects);
  }

  final List<SuspectEntity>? _searchUsers;
  @override
  @JsonKey()
  List<SuspectEntity>? get searchUsers {
    final value = _searchUsers;
    if (value == null) return null;
    if (_searchUsers is EqualUnmodifiableListView) return _searchUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final EventFeedbackDestination destination;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final int aiAnalysisCount;
  @override
  @JsonKey()
  final bool aiAnalysisInProgress;
  @override
  final FeedbackSubmitState submitState;
  @override
  final FeedbackSubmitState voiceProcessingState;
  @override
  final FeedbackTeacherState teacherState;

  @override
  String toString() {
    return 'FeedbackState(eventId: $eventId, event: $event, suspects: $suspects, searchUsers: $searchUsers, destination: $destination, description: $description, aiAnalysisCount: $aiAnalysisCount, aiAnalysisInProgress: $aiAnalysisInProgress, submitState: $submitState, voiceProcessingState: $voiceProcessingState, teacherState: $teacherState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedbackStateImpl &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.event, event) || other.event == event) &&
            const DeepCollectionEquality().equals(other._suspects, _suspects) &&
            const DeepCollectionEquality()
                .equals(other._searchUsers, _searchUsers) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.aiAnalysisCount, aiAnalysisCount) ||
                other.aiAnalysisCount == aiAnalysisCount) &&
            (identical(other.aiAnalysisInProgress, aiAnalysisInProgress) ||
                other.aiAnalysisInProgress == aiAnalysisInProgress) &&
            (identical(other.submitState, submitState) ||
                other.submitState == submitState) &&
            (identical(other.voiceProcessingState, voiceProcessingState) ||
                other.voiceProcessingState == voiceProcessingState) &&
            (identical(other.teacherState, teacherState) ||
                other.teacherState == teacherState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      eventId,
      event,
      const DeepCollectionEquality().hash(_suspects),
      const DeepCollectionEquality().hash(_searchUsers),
      destination,
      description,
      aiAnalysisCount,
      aiAnalysisInProgress,
      submitState,
      voiceProcessingState,
      teacherState);

  /// Create a copy of FeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedbackStateImplCopyWith<_$FeedbackStateImpl> get copyWith =>
      __$$FeedbackStateImplCopyWithImpl<_$FeedbackStateImpl>(this, _$identity);
}

abstract class _FeedbackState implements FeedbackState {
  factory _FeedbackState(
      {required final int eventId,
      final EventEntity? event,
      final List<SuspectEntity> suspects,
      final List<SuspectEntity>? searchUsers,
      final EventFeedbackDestination destination,
      final String description,
      final int aiAnalysisCount,
      final bool aiAnalysisInProgress,
      required final FeedbackSubmitState submitState,
      required final FeedbackSubmitState voiceProcessingState,
      required final FeedbackTeacherState teacherState}) = _$FeedbackStateImpl;

  @override
  int get eventId;
  @override
  EventEntity? get event;
  @override
  List<SuspectEntity> get suspects;
  @override
  List<SuspectEntity>? get searchUsers;
  @override
  EventFeedbackDestination get destination;
  @override
  String get description;
  @override
  int get aiAnalysisCount;
  @override
  bool get aiAnalysisInProgress;
  @override
  FeedbackSubmitState get submitState;
  @override
  FeedbackSubmitState get voiceProcessingState;
  @override
  FeedbackTeacherState get teacherState;

  /// Create a copy of FeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedbackStateImplCopyWith<_$FeedbackStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FeedbackSubmitState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FeedbackSubmitInitial value) initial,
    required TResult Function(FeedbackSubmitLoading value) loading,
    required TResult Function(FeedbackSubmitSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FeedbackSubmitInitial value)? initial,
    TResult? Function(FeedbackSubmitLoading value)? loading,
    TResult? Function(FeedbackSubmitSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FeedbackSubmitInitial value)? initial,
    TResult Function(FeedbackSubmitLoading value)? loading,
    TResult Function(FeedbackSubmitSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackSubmitStateCopyWith<$Res> {
  factory $FeedbackSubmitStateCopyWith(
          FeedbackSubmitState value, $Res Function(FeedbackSubmitState) then) =
      _$FeedbackSubmitStateCopyWithImpl<$Res, FeedbackSubmitState>;
}

/// @nodoc
class _$FeedbackSubmitStateCopyWithImpl<$Res, $Val extends FeedbackSubmitState>
    implements $FeedbackSubmitStateCopyWith<$Res> {
  _$FeedbackSubmitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedbackSubmitState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FeedbackSubmitInitialImplCopyWith<$Res> {
  factory _$$FeedbackSubmitInitialImplCopyWith(
          _$FeedbackSubmitInitialImpl value,
          $Res Function(_$FeedbackSubmitInitialImpl) then) =
      __$$FeedbackSubmitInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FeedbackSubmitInitialImplCopyWithImpl<$Res>
    extends _$FeedbackSubmitStateCopyWithImpl<$Res, _$FeedbackSubmitInitialImpl>
    implements _$$FeedbackSubmitInitialImplCopyWith<$Res> {
  __$$FeedbackSubmitInitialImplCopyWithImpl(_$FeedbackSubmitInitialImpl _value,
      $Res Function(_$FeedbackSubmitInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedbackSubmitState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FeedbackSubmitInitialImpl implements FeedbackSubmitInitial {
  _$FeedbackSubmitInitialImpl();

  @override
  String toString() {
    return 'FeedbackSubmitState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedbackSubmitInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FeedbackSubmitInitial value) initial,
    required TResult Function(FeedbackSubmitLoading value) loading,
    required TResult Function(FeedbackSubmitSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FeedbackSubmitInitial value)? initial,
    TResult? Function(FeedbackSubmitLoading value)? loading,
    TResult? Function(FeedbackSubmitSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FeedbackSubmitInitial value)? initial,
    TResult Function(FeedbackSubmitLoading value)? loading,
    TResult Function(FeedbackSubmitSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FeedbackSubmitInitial implements FeedbackSubmitState {
  factory FeedbackSubmitInitial() = _$FeedbackSubmitInitialImpl;
}

/// @nodoc
abstract class _$$FeedbackSubmitLoadingImplCopyWith<$Res> {
  factory _$$FeedbackSubmitLoadingImplCopyWith(
          _$FeedbackSubmitLoadingImpl value,
          $Res Function(_$FeedbackSubmitLoadingImpl) then) =
      __$$FeedbackSubmitLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FeedbackSubmitLoadingImplCopyWithImpl<$Res>
    extends _$FeedbackSubmitStateCopyWithImpl<$Res, _$FeedbackSubmitLoadingImpl>
    implements _$$FeedbackSubmitLoadingImplCopyWith<$Res> {
  __$$FeedbackSubmitLoadingImplCopyWithImpl(_$FeedbackSubmitLoadingImpl _value,
      $Res Function(_$FeedbackSubmitLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedbackSubmitState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FeedbackSubmitLoadingImpl implements FeedbackSubmitLoading {
  _$FeedbackSubmitLoadingImpl();

  @override
  String toString() {
    return 'FeedbackSubmitState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedbackSubmitLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FeedbackSubmitInitial value) initial,
    required TResult Function(FeedbackSubmitLoading value) loading,
    required TResult Function(FeedbackSubmitSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FeedbackSubmitInitial value)? initial,
    TResult? Function(FeedbackSubmitLoading value)? loading,
    TResult? Function(FeedbackSubmitSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FeedbackSubmitInitial value)? initial,
    TResult Function(FeedbackSubmitLoading value)? loading,
    TResult Function(FeedbackSubmitSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FeedbackSubmitLoading implements FeedbackSubmitState {
  factory FeedbackSubmitLoading() = _$FeedbackSubmitLoadingImpl;
}

/// @nodoc
abstract class _$$FeedbackSubmitSuccessImplCopyWith<$Res> {
  factory _$$FeedbackSubmitSuccessImplCopyWith(
          _$FeedbackSubmitSuccessImpl value,
          $Res Function(_$FeedbackSubmitSuccessImpl) then) =
      __$$FeedbackSubmitSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FeedbackSubmitSuccessImplCopyWithImpl<$Res>
    extends _$FeedbackSubmitStateCopyWithImpl<$Res, _$FeedbackSubmitSuccessImpl>
    implements _$$FeedbackSubmitSuccessImplCopyWith<$Res> {
  __$$FeedbackSubmitSuccessImplCopyWithImpl(_$FeedbackSubmitSuccessImpl _value,
      $Res Function(_$FeedbackSubmitSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedbackSubmitState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FeedbackSubmitSuccessImpl implements FeedbackSubmitSuccess {
  _$FeedbackSubmitSuccessImpl();

  @override
  String toString() {
    return 'FeedbackSubmitState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedbackSubmitSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FeedbackSubmitInitial value) initial,
    required TResult Function(FeedbackSubmitLoading value) loading,
    required TResult Function(FeedbackSubmitSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FeedbackSubmitInitial value)? initial,
    TResult? Function(FeedbackSubmitLoading value)? loading,
    TResult? Function(FeedbackSubmitSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FeedbackSubmitInitial value)? initial,
    TResult Function(FeedbackSubmitLoading value)? loading,
    TResult Function(FeedbackSubmitSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class FeedbackSubmitSuccess implements FeedbackSubmitState {
  factory FeedbackSubmitSuccess() = _$FeedbackSubmitSuccessImpl;
}

/// @nodoc
mixin _$FeedbackTeacherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() input,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? input,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? input,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FeedbackTeacherPending value) pending,
    required TResult Function(FeedbackTeacherInput value) input,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FeedbackTeacherPending value)? pending,
    TResult? Function(FeedbackTeacherInput value)? input,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FeedbackTeacherPending value)? pending,
    TResult Function(FeedbackTeacherInput value)? input,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackTeacherStateCopyWith<$Res> {
  factory $FeedbackTeacherStateCopyWith(FeedbackTeacherState value,
          $Res Function(FeedbackTeacherState) then) =
      _$FeedbackTeacherStateCopyWithImpl<$Res, FeedbackTeacherState>;
}

/// @nodoc
class _$FeedbackTeacherStateCopyWithImpl<$Res,
        $Val extends FeedbackTeacherState>
    implements $FeedbackTeacherStateCopyWith<$Res> {
  _$FeedbackTeacherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedbackTeacherState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FeedbackTeacherPendingImplCopyWith<$Res> {
  factory _$$FeedbackTeacherPendingImplCopyWith(
          _$FeedbackTeacherPendingImpl value,
          $Res Function(_$FeedbackTeacherPendingImpl) then) =
      __$$FeedbackTeacherPendingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FeedbackTeacherPendingImplCopyWithImpl<$Res>
    extends _$FeedbackTeacherStateCopyWithImpl<$Res,
        _$FeedbackTeacherPendingImpl>
    implements _$$FeedbackTeacherPendingImplCopyWith<$Res> {
  __$$FeedbackTeacherPendingImplCopyWithImpl(
      _$FeedbackTeacherPendingImpl _value,
      $Res Function(_$FeedbackTeacherPendingImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedbackTeacherState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FeedbackTeacherPendingImpl implements FeedbackTeacherPending {
  _$FeedbackTeacherPendingImpl();

  @override
  String toString() {
    return 'FeedbackTeacherState.pending()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedbackTeacherPendingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() input,
  }) {
    return pending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? input,
  }) {
    return pending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? input,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FeedbackTeacherPending value) pending,
    required TResult Function(FeedbackTeacherInput value) input,
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FeedbackTeacherPending value)? pending,
    TResult? Function(FeedbackTeacherInput value)? input,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FeedbackTeacherPending value)? pending,
    TResult Function(FeedbackTeacherInput value)? input,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }
}

abstract class FeedbackTeacherPending implements FeedbackTeacherState {
  factory FeedbackTeacherPending() = _$FeedbackTeacherPendingImpl;
}

/// @nodoc
abstract class _$$FeedbackTeacherInputImplCopyWith<$Res> {
  factory _$$FeedbackTeacherInputImplCopyWith(_$FeedbackTeacherInputImpl value,
          $Res Function(_$FeedbackTeacherInputImpl) then) =
      __$$FeedbackTeacherInputImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FeedbackTeacherInputImplCopyWithImpl<$Res>
    extends _$FeedbackTeacherStateCopyWithImpl<$Res, _$FeedbackTeacherInputImpl>
    implements _$$FeedbackTeacherInputImplCopyWith<$Res> {
  __$$FeedbackTeacherInputImplCopyWithImpl(_$FeedbackTeacherInputImpl _value,
      $Res Function(_$FeedbackTeacherInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedbackTeacherState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FeedbackTeacherInputImpl implements FeedbackTeacherInput {
  _$FeedbackTeacherInputImpl();

  @override
  String toString() {
    return 'FeedbackTeacherState.input()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedbackTeacherInputImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() input,
  }) {
    return input();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? input,
  }) {
    return input?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? input,
    required TResult orElse(),
  }) {
    if (input != null) {
      return input();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FeedbackTeacherPending value) pending,
    required TResult Function(FeedbackTeacherInput value) input,
  }) {
    return input(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FeedbackTeacherPending value)? pending,
    TResult? Function(FeedbackTeacherInput value)? input,
  }) {
    return input?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FeedbackTeacherPending value)? pending,
    TResult Function(FeedbackTeacherInput value)? input,
    required TResult orElse(),
  }) {
    if (input != null) {
      return input(this);
    }
    return orElse();
  }
}

abstract class FeedbackTeacherInput implements FeedbackTeacherState {
  factory FeedbackTeacherInput() = _$FeedbackTeacherInputImpl;
}
