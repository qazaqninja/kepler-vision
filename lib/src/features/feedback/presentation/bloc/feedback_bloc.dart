import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:kepler_vision/src/core/base/base_usecase/result.dart';
import 'package:kepler_vision/src/core/components/events/domain/models/event_entity.dart';
import 'package:kepler_vision/src/core/components/events/domain/models/summary_highlight_entity.dart';
import 'package:kepler_vision/src/core/components/events/domain/models/suspect_entity.dart';
import 'package:kepler_vision/src/core/components/users/domain/models/user_entity.dart';
import 'package:kepler_vision/src/core/exceptions/domain_exception.dart';
import 'package:kepler_vision/src/features/events/domain/requests/get_event_request.dart';
import 'package:kepler_vision/src/features/events/domain/requests/patch_event_request.dart';
import 'package:kepler_vision/src/features/events/domain/requests/patch_event_student_feedback_request.dart';
import 'package:kepler_vision/src/features/events/domain/usecases/get_event_use_case.dart';
import 'package:kepler_vision/src/features/feedback/domain/use_cases/patch_event_use_case.dart';
import 'package:kepler_vision/src/features/feedback/presentation/bloc/feedback_event.dart';
import 'package:kepler_vision/src/features/feedback/presentation/bloc/feedback_state.dart';

@injectable
class FeedbackBloc extends Bloc<FeedbackEvent, FeedbackState> {
  FeedbackBloc(
    this._getEventUseCase,
    this._patchEventUseCase, {
    @factoryParam required int eventId,
  }) : super(
          FeedbackState(
            eventId: eventId,
            submitState: FeedbackSubmitInitial(),
            voiceProcessingState: FeedbackSubmitInitial(),
            teacherState: FeedbackTeacherPending(),
          ),
        ) {
    _setupHandlers();
    add(FeedbackEventFetched(eventId));
  }

  final PatchEventUseCase _patchEventUseCase;
  final GetEventUseCase _getEventUseCase;

  void _setupHandlers() {
    on<FeedbackEventFetched>(_fetchData);
    on<FeedbackBecomeResponsiblePressed>(_becomeResponsible);
    on<FeedbackSearchEntered>(_searchEntered);
    on<FeedbackSearchCommitted>(_searchCommitted);
    on<FeedbackNewInvolvedPersonSelected>(_addInvolvedPerson);
    on<FeedbackInvolvedPersonForgotten>(_forgetInvolvedPersonUser);
    on<FeedbackDestinationChanged>(_destinationChanged);
    on<FeedbackDescriptionChanged>(_descriptionChanged);
    on<FeedbackDescriptionVoiceRecorded>(_descriptionVoiceRecorded);
    on<FeedbackSuspectFeedbackChanged>(_suspectFeedbackChanged);
    on<FeedbackSuspectFeedbackVoiceRecorded>(_suspectFeedbackVoiceRecorded);
    on<FeedbackAiAnalysisRequested>(_performAiAnalysis);
    on<FeedbackTeacherInputRequested>(_showTeacherInput);
    on<FeedbackPsychologistSubmitted>(_submitPsychologistFeedback);
    on<FeedbackTeacherSubmitted>(_submitTeacherFeedback);
    on<FeedbackTeacherNoCommentsSubmitted>(_submitTeacherNoCommentsFeedback);
  }

  Timer? _timer;

  Future<void> _fetchData(
    FeedbackEventFetched event,
    Emitter<FeedbackState> emit,
  ) async {
    final result = await _getEventUseCase(GetEventRequest(
      schoolId: 1,
      eventId: event.eventId,
    ));
    switch (result) {
      case SuccessResult<EventEntity, DomainException>(data: final event):
        emit(state.copyWith(event: event));
      case FailureResult<EventEntity, DomainException>():
        emit(state.copyWith(event: null));
    }
  }

  Future<void> _becomeResponsible(
    FeedbackBecomeResponsiblePressed _,
    Emitter<FeedbackState> emit,
  ) async {
    final stateEvent = state.event;
    if (stateEvent == null) {
      return;
    }
    emit(state.copyWith(event: null));
    await Future.delayed(const Duration(seconds: 2));
    emit(
      state.copyWith(
        event: stateEvent.copyWith(
          assignedTo: UserEntity(
            id: "00000",
            fullName: "Айсин Арсен Амирович",
            imageUrl:
                "https://raw.githubusercontent.com/Tosemite/miscellaneous/refs/heads/main/arsen.jpg",
            isMe: true,
          ),
        ),
      ),
    );
  }

  Future<void> _searchEntered(
    FeedbackSearchEntered event,
    Emitter<FeedbackState> emit,
  ) async {
    if (event.value.isEmpty) {
      emit(state.copyWith(
        searchUsers: [],
      ));
      return;
    }
    emit(state.copyWith(
      searchUsers: null,
    ));
    _timer?.cancel();
    _timer = Timer(const Duration(seconds: 1), () {
      add(FeedbackSearchCommitted(event.value));
    });
  }

  Future<void> _searchCommitted(
    FeedbackSearchCommitted event,
    Emitter<FeedbackState> emit,
  ) async {
    emit(state.copyWith(
      searchUsers: [
        SuspectEntity(
          id: 1,
          name: "Светлана",
          surname: "М.",
          className: "6Б класс",
          photoUrl:
              "https://www.figma.com/file/533ZGNgNx1Aidsq043LbYz/image/8b992350d9dfa1255edcdc51696bc89aa4ad826f",
        ),
        SuspectEntity(
          id: 2,
          name: "Ертулеу",
          surname: "Б.",
          className: "6Б класс",
          photoUrl:
              "https://www.figma.com/file/533ZGNgNx1Aidsq043LbYz/image/9b4d87e445628b6c120b8962ff6e5b864e1e6660",
        ),
      ]
          .where(
            (e) => e.name!.contains(
              event.value,
            ),
          )
          .toList(),
    ));
  }

  Future<void> _addInvolvedPerson(
    FeedbackNewInvolvedPersonSelected event,
    Emitter<FeedbackState> emit,
  ) async {
    final involvedPeople = state.suspects.toList();
    involvedPeople.removeWhere((e) => e.id == event.involvedPerson.id);
    involvedPeople.add(event.involvedPerson);
    emit(
      state.copyWith(
        suspects: involvedPeople,
      ),
    );
  }

  Future<void> _forgetInvolvedPersonUser(
    FeedbackInvolvedPersonForgotten event,
    Emitter<FeedbackState> emit,
  ) async {
    final involvedPeople = state.suspects.toList();
    involvedPeople.removeWhere((e) => e.id == event.involvedPerson.id);
    involvedPeople.add(
      event.involvedPerson.copyWith(),
    );
    emit(
      state.copyWith(
        suspects: involvedPeople,
      ),
    );
  }

  Future<void> _destinationChanged(
    FeedbackDestinationChanged event,
    Emitter<FeedbackState> emit,
  ) async {
    emit(
      state.copyWith(
        destination: event.destination,
      ),
    );
  }

  Future<void> _descriptionChanged(
    FeedbackDescriptionChanged event,
    Emitter<FeedbackState> emit,
  ) async {
    emit(
      state.copyWith(
        description: event.description,
      ),
    );
  }

  Future<void> _descriptionVoiceRecorded(
    FeedbackDescriptionVoiceRecorded event,
    Emitter<FeedbackState> emit,
  ) async {
    emit(state.copyWith(voiceProcessingState: FeedbackSubmitLoading()));
    await Future.delayed(const Duration(seconds: 1));
    emit(state.copyWith(voiceProcessingState: FeedbackSubmitSuccess()));
    add(FeedbackDescriptionChanged("${state.description}\nТекст из голоса"));
  }

  Future<void> _suspectFeedbackChanged(
    FeedbackSuspectFeedbackChanged event,
    Emitter<FeedbackState> emit,
  ) async {
    final suspects = state.suspects.toList();
    suspects[event.index] =
        suspects[event.index].copyWith(description: event.feedback);
    emit(
      state.copyWith(suspects: suspects),
    );
  }

  Future<void> _suspectFeedbackVoiceRecorded(
    FeedbackSuspectFeedbackVoiceRecorded event,
    Emitter<FeedbackState> emit,
  ) async {
    emit(state.copyWith(voiceProcessingState: FeedbackSubmitLoading()));
    await Future.delayed(const Duration(seconds: 1));
    emit(state.copyWith(voiceProcessingState: FeedbackSubmitSuccess()));
    add(
      FeedbackSuspectFeedbackChanged(
        event.index,
        "${state.description}\nТекст из голоса",
      ),
    );
  }

  Future<void> _performAiAnalysis(
    FeedbackAiAnalysisRequested _,
    Emitter<FeedbackState> emit,
  ) async {
    if (state.aiAnalysisCount == 0 || state.aiAnalysisInProgress) return;
    emit(state.copyWith(aiAnalysisInProgress: true));
    await Future.delayed(const Duration(seconds: 1));
    final suspects = state.suspects.toList();
    for (int i = 0; i < suspects.length; i++) {
      suspects[i] = suspects[i].copyWith(
        highlights: [
          SummaryHighlightEntity(
            title: "Социальная информация",
            content: "Текст описание обработанное ИИ",
          ),
          SummaryHighlightEntity(
            title: "Еще пункт",
            content: "Текст описание обработанное ИИ",
          ),
          SummaryHighlightEntity(
            title: "Еще пункт",
            content: "Текст описание обработанное ИИ",
          ),
        ],
      );
    }
    emit(
      state.copyWith(
        suspects: suspects,
        aiAnalysisInProgress: false,
        aiAnalysisCount: state.aiAnalysisCount - 1,
      ),
    );
  }

  Future<void> _showTeacherInput(
    FeedbackTeacherInputRequested _,
    Emitter<FeedbackState> emit,
  ) async {
    if (state.teacherState is FeedbackTeacherInput) return;
    emit(state.copyWith(teacherState: FeedbackTeacherInput()));
  }

  Future<void> _submitPsychologistFeedback(
    FeedbackPsychologistSubmitted _,
    Emitter<FeedbackState> emit,
  ) async {
    if (state.submitState is FeedbackSubmitLoading) return;
    emit(state.copyWith(submitState: FeedbackSubmitLoading()));
    final result = await _patchEventUseCase(
      PatchEventRequest(
        schoolId: 1,
        eventId: state.eventId,
        notificationPolicy: state.destination,
        description: state.description.isEmpty ? null : state.description,
        studentFeedbacks: state.suspects.isNotEmpty
            ? state.suspects
                .map(
                  (e) => PatchEventStudentFeedbackRequest(
                    studentId: e.id,
                    description: e.description ?? "",
                  ),
                )
                .toList()
            : null,
      ),
    );
    switch (result) {
      case SuccessResult<void, DomainException>():
        emit(state.copyWith(submitState: FeedbackSubmitSuccess()));
      case FailureResult<void, DomainException>():
      // TODO: Handle this case.
    }
  }

  Future<void> _submitTeacherFeedback(
    FeedbackTeacherSubmitted _,
    Emitter<FeedbackState> emit,
  ) async {
    if (state.submitState is FeedbackSubmitLoading) return;
    emit(state.copyWith(submitState: FeedbackSubmitLoading()));
    final result = await _patchEventUseCase(
      PatchEventRequest(
        schoolId: 1,
        eventId: state.eventId,
        notificationPolicy: state.destination,
        description: state.description.isEmpty ? null : state.description,
        studentFeedbacks: state.suspects
            .map(
              (e) => PatchEventStudentFeedbackRequest(
                studentId: e.id,
                description: e.description ?? "",
              ),
            )
            .toList(),
      ),
    );
    switch (result) {
      case SuccessResult<void, DomainException>():
        emit(state.copyWith(submitState: FeedbackSubmitSuccess()));
      case FailureResult<void, DomainException>():
      // TODO: Handle this case.
    }
  }

  Future<void> _submitTeacherNoCommentsFeedback(
    FeedbackTeacherNoCommentsSubmitted _,
    Emitter<FeedbackState> emit,
  ) async {
    if (state.submitState is FeedbackSubmitLoading) return;
    emit(state.copyWith(submitState: FeedbackSubmitLoading()));
    final result = await _patchEventUseCase(
      PatchEventRequest(
        schoolId: 1,
        eventId: state.eventId,
        notificationPolicy: state.destination,
      ),
    );
    switch (result) {
      case SuccessResult<void, DomainException>():
        emit(state.copyWith(submitState: FeedbackSubmitSuccess()));
      case FailureResult<void, DomainException>():
      // TODO: Handle this case.
    }
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
