import 'package:flutter/material.dart';
import 'package:kepler_vision/src/core/components/events/domain/models/suspect_entity.dart';
import 'package:kepler_vision/src/core/components/users/presentation/widgets/adaptive_user_avatar.dart';
import 'package:kepler_vision/src/core/extensions/build_context_extension.dart';
import 'package:kepler_vision/src/core/widgets/padding/default_horizontal_padding.dart';
import 'package:kepler_vision/src/core/widgets/popups/sheet_popup.dart';
import 'package:kepler_vision/src/features/feedback/presentation/components/feedback_action.dart';
import 'package:kepler_vision/src/features/feedback/presentation/components/feedback_involved_person_highlight_view.dart';

Future<void> showFeedbackInvolvedPersonExpandedPopup(
  BuildContext context, {
  required SuspectEntity involvedPerson,
}) {
  final description = involvedPerson.description;
  return showSheetPopup(
    context,
    title: Text(context.loc.feedback),
    padding: EdgeInsets.zero,
    builder: (_) {
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
          if (description != null)
            DefaultHorizontalPadding(
              child: Text(
                description,
                style: context.typography.textmdMedium.copyWith(
                  color: context.colors.gray600,
                ),
              ),
            ),
          const SizedBox(height: 4),
          for (final highlight in involvedPerson.highlights)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
              child: FeedbackInvolvedPersonHighlightView(
                highlight: highlight,
              ),
            ),
        ],
      );
    },
  );
}
