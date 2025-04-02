import 'package:flutter/material.dart';
import 'package:kepler_vision/src/core/extensions/build_context_extension.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.time,
    required this.iconColor,
    this.hasCounter = false,
    this.counterValue = '',
    this.onTap,
  });

  final String title;
  final String subtitle;
  final String time;
  final Color iconColor;
  final bool hasCounter;
  final String counterValue;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Icon container
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                color: iconColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                context.icons.ringing_bell_notification__notification_vibrate_ring_sound_alarm_alert_bell_noise,
                color: context.colors.white,
                size: 20,
              ),
            ),
            const SizedBox(width: 12),
            // Title and subtitle
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: context.typography.textsmSemibold.copyWith(
                      color: context.colors.black,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: context.typography.textxsRegular.copyWith(
                      color: context.colors.gray500,
                    ),
                  ),
                ],
              ),
            ),
            // Time and counter
            Row(
              children: [
                if (hasCounter)
                  Container(
                    decoration: BoxDecoration(
                      color: context.colors.error500,
                      shape: BoxShape.circle,
                    ),
                    padding: const EdgeInsets.all(6),
                    margin: const EdgeInsets.only(right: 8),
                    child: Center(
                      child: Text(
                        counterValue,
                        style: context.typography.textxsBold.copyWith(
                          color: context.colors.white,
                        ),
                      ),
                    ),
                  ),
                Text(
                  time,
                  style: context.typography.textxsRegular.copyWith(
                    color: context.colors.gray500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
