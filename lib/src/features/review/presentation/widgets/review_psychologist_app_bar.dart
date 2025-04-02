import 'package:kepler_vision/src/app/imports.dart';
import 'package:kepler_vision/src/core/extensions/build_context_extension.dart';
import 'package:kepler_vision/src/core/widgets/buttons/custom_icon_button.dart';

import '../../../../core/router/router.dart';

class ReviewPsychologistAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const ReviewPsychologistAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        child: Row(
          children: [
            Expanded(
              child: Text(
                context.loc.events,
                style: context.typography.typography4Bold.copyWith(
                  color: context.colors.gray800,
                ),
              ),
            ),
            CustomIconButton(
              icon: context.icons
                  .ringing_bell_notification__notification_vibrate_ring_sound_alarm_alert_bell_noise,
              onTap: () {
                // TODO: Implement notification page
                context.push(RoutePaths.notifications);
              },
            ),
          ],
        ),
      ),
    );
  }
}
