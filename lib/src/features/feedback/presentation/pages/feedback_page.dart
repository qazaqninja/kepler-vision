import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kepler_vision/src/app/imports.dart';
import 'package:kepler_vision/src/core/extensions/build_context_extension.dart';
import 'package:kepler_vision/src/features/feedback/presentation/bloc/feedback_bloc.dart';
import 'package:kepler_vision/src/features/feedback/presentation/bloc/feedback_event.dart';
import 'package:kepler_vision/src/features/feedback/presentation/bloc/feedback_state.dart';
import 'package:kepler_vision/src/features/feedback/presentation/components/feedback_app_bar.dart';
import 'package:kepler_vision/src/features/feedback/presentation/components/feedback_assigned_else_view.dart';
import 'package:kepler_vision/src/features/feedback/presentation/components/feedback_assigned_me_view.dart';
import 'package:kepler_vision/src/features/feedback/presentation/components/feedback_cheating_smoking_input_view.dart';
import 'package:kepler_vision/src/features/feedback/presentation/components/feedback_cheating_smoking_pending_view.dart';
import 'package:kepler_vision/src/features/feedback/presentation/components/feedback_completed_view.dart';
import 'package:kepler_vision/src/features/feedback/presentation/components/feedback_initial_pending_view.dart';
import 'package:kepler_vision/src/features/feedback/presentation/components/feedback_video_sheet_wrapper.dart';
import 'package:kepler_vision/src/features/settings/domain/entities/role_entity.dart';

import '../../../../core/components/events/domain/models/event_entity.dart';

class FeedbackPage extends StatelessWidget {
  const FeedbackPage({
    super.key,
    required this.event,
  });

  final EventEntity event;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeedbackBloc, FeedbackState>(
      bloc: context.read<FeedbackBloc>()..add(FeedbackEventFetched(event.id)),
      builder: (context, state) {
        final event = state.event;
        if (event == null) {
          return Scaffold(
            backgroundColor: context.colors.gray100,
            appBar: const FeedbackAppBar(
              event: null,
            ),
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        }

        final assignedTo = event.assignedTo;

        final Widget view;

        if (state.submitState is FeedbackSubmitLoading) {
          view = Center(child: CircularProgressIndicator());
        } else if (event.completedAt != null) {
          view = FeedbackCompletedView(event: event);
        } else {
          switch (context.role?.title) {
            case RoleEntity.psychologist:
              if (assignedTo != null) {
                if (assignedTo.isMe) {
                  view = FeedbackAssignedMeView(
                    event: event,
                    involvedPeople: state.suspects,
                  );
                } else {
                  view = FeedbackAssignedElseView(assignee: assignedTo);
                }
              } else {
                view = FeedbackInitialPendingView(event: event);
              }
            case RoleEntity.teacher:
              switch (state.teacherState) {
                case FeedbackTeacherPending():
                  view = FeedbackCheatingSmokingPendingView(event: event);
                case FeedbackTeacherInput():
                default:
                  view = FeedbackCheatingSmokingInputView(event: event);
              }
            default:
              view = FeedbackCompletedView(event: event);
          }
        }

        return Scaffold(
          appBar: FeedbackAppBar(event: event),
          backgroundColor: context.colors.gray100,
          body: Column(
            children: [
              Expanded(
                child: FeedbackVideoSheetWrapper(
                  event: event,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 24),
                    child: view,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Container(
                height: MediaQuery.paddingOf(context).bottom,
                color: context.colors.white,
              ),
            ],
          ),
        );
      },
    );
  }
}
