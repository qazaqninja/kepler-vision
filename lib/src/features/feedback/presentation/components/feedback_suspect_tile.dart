import 'package:kepler_vision/src/app/imports.dart';
import 'package:kepler_vision/src/core/components/events/domain/models/suspect_entity.dart';
import 'package:kepler_vision/src/core/components/users/presentation/widgets/adaptive_user_avatar.dart';
import 'package:kepler_vision/src/core/extensions/build_context_extension.dart';
import 'package:kepler_vision/src/features/feedback/presentation/components/feedback_action.dart';

class FeedbackSuspectTile extends StatelessWidget {
  const FeedbackSuspectTile({
    super.key,
    required this.suspect,
    this.onTap,
  });

  final VoidCallback? onTap;
  final SuspectEntity suspect;

  @override
  Widget build(BuildContext context) {
    final user = suspect;
    return FeedbackActionTile(
      padding: const EdgeInsets.symmetric(vertical: 8),
      onTap: onTap,
      leading: AdaptiveUserAvatar(
        imageUri: user.photoUrl!,
      ),
      trailingIcon: onTap != null
          ? context.icons.pencil__change_edit_modify_pencil_write_writing
          : null,
      title: '${user.name} ${user.surname}',
      subtitle: user.className,
      trailing: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: AdaptiveUserAvatar(
          imageUri: suspect.photoUrl!,
        ),
      ),
    );
  }
}
