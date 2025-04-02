import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kepler_vision/src/app/imports.dart';
import 'package:kepler_vision/src/core/components/events/domain/models/event_entity.dart';
import 'package:kepler_vision/src/core/components/users/presentation/widgets/adaptive_user_avatar.dart';
import 'package:kepler_vision/src/core/extensions/build_context_extension.dart';
import 'package:kepler_vision/src/core/widgets/padding/default_horizontal_padding.dart';
import 'package:kepler_vision/src/features/feedback/presentation/bloc/feedback_bloc.dart';
import 'package:kepler_vision/src/features/feedback/presentation/bloc/feedback_event.dart';
import 'package:kepler_vision/src/features/feedback/presentation/components/feedback_action.dart';
import 'package:kepler_vision/src/features/feedback/presentation/components/feedback_completed_involved_person_summary_view.dart';
import 'package:kepler_vision/src/features/feedback/presentation/popups/feedback_confirm_send_without_comment_popup.dart';

class FeedbackCheatingSmokingPendingView extends StatelessWidget {
  const FeedbackCheatingSmokingPendingView({
    super.key,
    required this.event,
  });

  final EventEntity event;

  @override
  Widget build(BuildContext context) {
    final assignee = event.assignedTo;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (assignee != null) ...[
          DefaultHorizontalPadding(
            child: Text(
              context.loc.responsiblePerson,
              style: context.typography.textsmSemibold.copyWith(
                color: context.colors.black,
              ),
            ),
          ),
          const SizedBox(height: 8),
          DefaultHorizontalPadding(
            child: FeedbackActionTile(
              onTap: () {},
              leading: AdaptiveUserAvatar(
                imageUri: assignee.imageUrl,
              ),
              backgroundColor: context.colors.gray50,
              title: assignee.fullName,
              subtitle: "Учитель",
              //TODO: get from UserEntity
              trailingIcon: context.icons.chevron_right,
            ),
          ),
          const SizedBox(height: 8),
        ],
        const SizedBox(height: 8),
        DefaultHorizontalPadding(
          child: Text(
            context.loc.involvedPeopleCount(event.involvedPersons.length),
            style: context.typography.textsmSemibold.copyWith(
              color: context.colors.black,
            ),
          ),
        ),
        const SizedBox(height: 8),
        for (final involvedPerson in event.involvedPersons)
          FeedbackCompletedInvolvedPersonSummaryView(
            involvedPerson: involvedPerson,
          ),
        Spacer(),
        DefaultHorizontalPadding(
          child: ElevatedButton(
            onPressed: () => context.read<FeedbackBloc>().add(
                  FeedbackTeacherInputRequested(),
                ),
            child: Text(context.loc.write),
          ),
        ),
        const SizedBox(height: 8),
        DefaultHorizontalPadding(
          child: OutlinedButton(
            onPressed: () =>
                showFeedbackConfirmSendWithoutCommentPopup(context),
            child: Text(context.loc.sendWithoutComment),
          ),
        ),
      ],
    );
  }
}
