import 'package:kepler_vision/src/app/imports.dart';
import 'package:kepler_vision/src/core/components/events/domain/models/suspect_entity.dart';
import 'package:kepler_vision/src/core/components/users/presentation/widgets/adaptive_user_avatar.dart';
import 'package:kepler_vision/src/core/extensions/build_context_extension.dart';
import 'package:kepler_vision/src/features/feedback/presentation/components/feedback_action.dart';

class FeedbackConfirmSuspectTile extends StatelessWidget {
  const FeedbackConfirmSuspectTile({
    super.key,
    required this.suspect,
  });

  final SuspectEntity suspect;

  @override
  Widget build(BuildContext context) {
    if (suspect.name == null) {
      return FeedbackActionTile(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        title: context.loc.unidentifiedStudent,
        subtitle: context.loc.willBeIdentifiedAfterSent,
        leading: AdaptiveUserAvatar(
          imageUri: suspect.photoUrl!,
        ),
      );
    }
    return FeedbackActionTile(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      title: '${suspect.name!} ${suspect.surname!}',
      subtitle: suspect.className!,
      onTap: () {},
      leading: AdaptiveUserAvatar(
        imageUri: suspect.photoUrl!,
      ),
      trailing: Text(context.loc.dossier),
      trailingIcon: context.icons.chevron_right,
    );
  }
}
