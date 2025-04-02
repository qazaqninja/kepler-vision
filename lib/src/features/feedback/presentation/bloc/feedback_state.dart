import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kepler_vision/src/core/components/events/domain/models/enums/event_feedback_destination.dart';
import 'package:kepler_vision/src/core/components/events/domain/models/event_entity.dart';
import 'package:kepler_vision/src/core/components/events/domain/models/suspect_entity.dart';

part 'feedback_state.freezed.dart';

@freezed
class FeedbackState with _$FeedbackState {
  factory FeedbackState({
    required int eventId,
    EventEntity? event,
    @Default([]) List<SuspectEntity> suspects,
    @Default([]) List<SuspectEntity>? searchUsers,
    @Default(EventFeedbackDestination.parent) EventFeedbackDestination destination,
    @Default("") String description,
    @Default(3) int aiAnalysisCount,
    @Default(false) bool aiAnalysisInProgress,
    required FeedbackSubmitState submitState,
    required FeedbackSubmitState voiceProcessingState,
    required FeedbackTeacherState teacherState,
  }) = _FeedbackState;
}

@freezed
class FeedbackSubmitState with _$FeedbackSubmitState {
  factory FeedbackSubmitState.initial() = FeedbackSubmitInitial;
  factory FeedbackSubmitState.loading() = FeedbackSubmitLoading;
  factory FeedbackSubmitState.success() = FeedbackSubmitSuccess;
}

@freezed
class FeedbackTeacherState with _$FeedbackTeacherState {
  factory FeedbackTeacherState.pending() = FeedbackTeacherPending;
  factory FeedbackTeacherState.input() = FeedbackTeacherInput;
}
