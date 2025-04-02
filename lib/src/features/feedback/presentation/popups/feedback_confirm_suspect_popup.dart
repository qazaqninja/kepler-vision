import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kepler_vision/src/core/components/events/domain/models/suspect_entity.dart';
import 'package:kepler_vision/src/core/components/users/presentation/widgets/adaptive_image.dart';
import 'package:kepler_vision/src/core/components/users/presentation/widgets/adaptive_user_avatar.dart';
import 'package:kepler_vision/src/core/extensions/build_context_extension.dart';
import 'package:kepler_vision/src/core/widgets/buttons/custom_icon_button.dart';
import 'package:kepler_vision/src/core/widgets/layout/two_children_overlapping_view.dart';
import 'package:kepler_vision/src/core/widgets/padding/default_horizontal_padding.dart';
import 'package:kepler_vision/src/core/widgets/popups/base_popup.dart';
import 'package:kepler_vision/src/features/feedback/presentation/popups/feedback_find_suspect_popup.dart';

Future<void> showFeedbackConfirmSuspectPopup(
  BuildContext originalContext, {
  required SuspectEntity suspect,
  VoidCallback? onYes,
  VoidCallback? onDoNotKnow,
}) {
  final user = suspect;
  return showBasePopup(
    originalContext,
    useRootNavigator: false,
    builder: (context) {
      return Stack(
        fit: StackFit.passthrough,
        children: [
          SizedBox(
            width: double.infinity,
            child: TwoChildrenOverlappingView(
              childPriority: TwoChildrenOverlappingPriority.second,
              firstChild: ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(12)),
                child: AdaptiveImage(
                  imageUri: suspect.photoUrl!,
                  fit: BoxFit.fitWidth,
                ),
              ),
              secondChild: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: context.colors.white,
                ),
                child: DefaultHorizontalPadding(
                  child: SafeArea(
                    child: FeedbackConfirmSuspectPopup(
                      user: user,
                      onYes: onYes,
                      onDoNotKnow: onDoNotKnow,
                      onNo: () => showFeedbackFindSuspectPopup(
                        originalContext,
                        suspect: suspect,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 8,
            right: 8,
            child: CustomIconButton(
              onTap: context.pop,
              size: 16,
              icon: context.icons
                  .delete_1__remove_add_button_buttons_delete_cross_x_mathematics_multiply_math,
            ),
          ),
        ],
      );
    },
  );
}

class FeedbackConfirmSuspectPopup extends StatelessWidget {
  const FeedbackConfirmSuspectPopup({
    super.key,
    required this.user,
    this.onYes,
    this.onDoNotKnow,
    this.onNo,
  });

  final SuspectEntity user;

  final VoidCallback? onYes;
  final VoidCallback? onDoNotKnow;
  final VoidCallback? onNo;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 12),
        Text(
          context.loc.isItSamePersonQuestion,
          style: context.typography.textlgSemibold.copyWith(
            color: context.colors.black,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          context.loc.confirmPerson,
          style: context.typography.textsmRegular.copyWith(
            color: context.colors.gray500,
          ),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            AdaptiveUserAvatar(
              imageUri: user.photoUrl!,
              width: 100,
              height: 100,
              borderRadius: BorderRadius.circular(12),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${user.name!} ${user.surname!}',
                    style: context.typography.textlgSemibold.copyWith(
                      color: context.colors.black,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    user.className!,
                    style: context.typography.textmdRegular.copyWith(
                      color: context.colors.gray500,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: ElevatedButton.icon(
                onPressed: () {
                  context.pop();
                  onYes?.call();
                },
                icon: Icon(
                  context.icons
                      .check__check_form_validation_checkmark_success_add_addition_tick,
                ),
                label: Text(context.loc.yes),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: OutlinedButton.icon(
                onPressed: () {
                  context.pop();
                  onDoNotKnow?.call();
                },
                icon: Icon(
                  context.icons
                      .help_question_1__circle_faq_frame_help_info_mark_more_query_question,
                ),
                label: Text(context.loc.doNotKnow),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: context.colors.error300,
                  ),
                  iconColor: context.colors.error700,
                  foregroundColor: context.colors.error700,
                ),
                onPressed: () {
                  context.pop();
                  onNo?.call();
                },
                icon: Icon(
                  context.icons
                      .delete_1__remove_add_button_buttons_delete_cross_x_mathematics_multiply_math,
                ),
                label: Text(context.loc.no),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
