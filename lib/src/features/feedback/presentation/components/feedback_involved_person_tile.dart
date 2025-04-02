import 'package:kepler_vision/src/app/imports.dart';
import 'package:kepler_vision/src/core/components/events/domain/models/suspect_entity.dart';
import 'package:kepler_vision/src/core/components/users/presentation/widgets/adaptive_user_avatar.dart';
import 'package:kepler_vision/src/core/extensions/build_context_extension.dart';
import 'package:kepler_vision/src/features/feedback/presentation/components/feedback_action.dart';
import 'package:kepler_vision/src/features/feedback/presentation/components/feedback_involved_person_highlight_view.dart';
import 'package:kepler_vision/src/features/feedback/presentation/popups/feedback_involved_person_expanded_popup.dart';

class FeedbackInvolvedPersonTile extends StatelessWidget {
  const FeedbackInvolvedPersonTile({
    super.key,
    required this.involvedPerson,
  });

  final SuspectEntity involvedPerson;

  @override
  Widget build(BuildContext context) {
    final description = involvedPerson.description;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FeedbackActionTile(
          title: '${involvedPerson.name!} ${involvedPerson.surname!}',
          subtitle: involvedPerson.className!,
          onTap: () {},
          leading: AdaptiveUserAvatar(
            imageUri: involvedPerson.photoUrl!,
          ),
          trailing: Text(context.loc.dossier),
          trailingIcon: context.icons.chevron_right,
        ),
        const SizedBox(height: 4),
        for (final highlight in involvedPerson.highlights.take(2))
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 4,
              horizontal: 16,
            ),
            child: FeedbackInvolvedPersonHighlightView(
              highlight: highlight,
            ),
          ),
        if (description != null || involvedPerson.highlights.length > 2)
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: OutlinedButton(
              onPressed: () => showFeedbackInvolvedPersonExpandedPopup(
                context,
                involvedPerson: involvedPerson,
              ),
              child: Text(
                context.loc.readFull,
              ),
            ),
          ),
        const SizedBox(height: 4),
        const Divider(),
      ],
    );
  }
}
