import 'package:kepler_vision/src/app/imports.dart';
import 'package:kepler_vision/src/core/components/appbar/custom_app_bar.dart';
import 'package:kepler_vision/src/core/extensions/build_context_extension.dart';
import 'package:kepler_vision/src/core/router/router.dart';
import 'package:kepler_vision/src/core/widgets/buttons/custom_icon_button.dart';

class ParentEventsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ParentEventsAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(120);

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      backgroundColor: Colors.transparent,
      // titleWidget: Row(children: [
      //   Text(
      //     context.loc.myClass,
      //     style: context.typography.textxlBold.copyWith(
      //       color: context.colors.gray800,
      //     ),
      //   ),
      // ]),
      actions: [
        CustomIconButton(
          icon: context.icons.ringing_bell_notification__notification_vibrate_ring_sound_alarm_alert_bell_noise,
          onTap: () {
            context.push(RoutePaths.notifications);
          },
        ),
      ],
    );
  }
}
