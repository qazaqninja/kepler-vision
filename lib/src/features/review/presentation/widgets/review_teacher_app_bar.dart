import 'package:kepler_vision/src/app/imports.dart';
import 'package:kepler_vision/src/core/components/appbar/custom_app_bar.dart';
import 'package:kepler_vision/src/core/extensions/build_context_extension.dart';
import 'package:kepler_vision/src/core/router/router.dart';
import 'package:kepler_vision/src/core/widgets/buttons/custom_icon_button.dart';
import 'package:kepler_vision/src/features/review/presentation/popups/select_teacher_role_popup.dart';

class ReviewTeacherAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ReviewTeacherAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      backgroundColor: Colors.transparent,
      titleWidget: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () => showSelectTeacherRolePopup(context),
        child: Row(children: [
          Text(
            context.loc.myClass,
            style: context.typography.textxlBold.copyWith(
              color: context.colors.gray800,
            ),
          ),
          Icon(context.icons.chevron_down),
        ]),
      ),
      actions: [
        CustomIconButton(
          icon: context.icons.ringing_bell_notification__notification_vibrate_ring_sound_alarm_alert_bell_noise,
          onTap: () {
            context.push(RoutePaths.notifications);
          },
        ),
      ],
    );
    // return SafeArea(
    //   child: Padding(
    //     padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
    //     child: Row(
    //       children: [
    //         InkWell(
    //           onTap: () => showSelectTeacherRolePopup(context),
    //           child: Row(children: [
    //             Text(
    //               context.loc.myClass,
    //               style: context.typography.typography4Bold.copyWith(
    //                 color: context.colors.gray800,
    //               ),
    //             ),
    //             Icon(context.icons.chevron_down),
    //           ]),
    //         ),
    //         const Spacer(),
    //         CustomIconButton(
    //           icon: context.icons.ringing_bell_notification__notification_vibrate_ring_sound_alarm_alert_bell_noise,
    //           onTap: () {
    //             context.push(RoutePaths.notifications);
    //           },
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
