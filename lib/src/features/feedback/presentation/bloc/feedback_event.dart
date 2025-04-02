import 'package:kepler_vision/src/core/components/events/domain/models/enums/event_feedback_destination.dart';
import 'package:kepler_vision/src/core/components/events/domain/models/suspect_entity.dart';

sealed class FeedbackEvent {
  const FeedbackEvent();
}

class FeedbackEventFetched extends FeedbackEvent {
  final int eventId;

  const FeedbackEventFetched(this.eventId);
}

class FeedbackBecomeResponsiblePressed extends FeedbackEvent {
  const FeedbackBecomeResponsiblePressed();
}

class FeedbackSearchEntered extends FeedbackEvent {
  final String value;

  const FeedbackSearchEntered(this.value);
}

class FeedbackSearchCommitted extends FeedbackEvent {
  final String value;

  const FeedbackSearchCommitted(this.value);
}

class FeedbackNewInvolvedPersonSelected extends FeedbackEvent {
  final SuspectEntity involvedPerson;

  const FeedbackNewInvolvedPersonSelected(this.involvedPerson);
}

class FeedbackInvolvedPersonForgotten extends FeedbackEvent {
  final SuspectEntity involvedPerson;

  const FeedbackInvolvedPersonForgotten(this.involvedPerson);
}

class FeedbackDestinationChanged extends FeedbackEvent {
  final EventFeedbackDestination destination;

  const FeedbackDestinationChanged(this.destination);
}

class FeedbackDescriptionChanged extends FeedbackEvent {
  final String description;

  const FeedbackDescriptionChanged(this.description);
}

class FeedbackDescriptionVoiceRecorded extends FeedbackEvent {
  final String path;

  const FeedbackDescriptionVoiceRecorded(this.path);
}

class FeedbackSuspectFeedbackChanged extends FeedbackEvent {
  final int index;
  final String feedback;

  const FeedbackSuspectFeedbackChanged(this.index, this.feedback);
}

class FeedbackSuspectFeedbackVoiceRecorded extends FeedbackEvent {
  final int index;
  final String path;

  const FeedbackSuspectFeedbackVoiceRecorded(this.index, this.path);
}

class FeedbackAiAnalysisRequested extends FeedbackEvent {
  const FeedbackAiAnalysisRequested();
}

class FeedbackPsychologistSubmitted extends FeedbackEvent {
  const FeedbackPsychologistSubmitted();
}

class FeedbackTeacherSubmitted extends FeedbackEvent {
  const FeedbackTeacherSubmitted();
}

class FeedbackTeacherNoCommentsSubmitted extends FeedbackEvent {
  const FeedbackTeacherNoCommentsSubmitted();
}

class FeedbackTeacherInputRequested extends FeedbackEvent {
  const FeedbackTeacherInputRequested();
}
