import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:kepler_vision/src/core/components/events/domain/extensions/event_type_extension.dart';
import 'package:kepler_vision/src/core/components/events/domain/models/event_entity.dart';
import 'package:kepler_vision/src/core/extensions/build_context_extension.dart';
import 'package:kepler_vision/src/core/extensions/date_time_extension.dart';
import 'package:kepler_vision/src/core/router/router.dart';

import 'event_status_date.dart';

class EventTile extends StatelessWidget {
  const EventTile({
    super.key,
    required this.event,
    this.onTap,
  });

  final VoidCallback? onTap;
  final EventEntity event;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ??
          () => context.push(
                "${RoutePaths.feedback}/${event.id}",
                extra: event,
              ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            SvgPicture.asset(event.type.getFilledAssetPath(context)),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  event.type.getLocalizedText(context),
                  style: context.typography.typography2SemiBold.copyWith(
                    color: context.colors.black,
                  ),
                ),
                const SizedBox(height: 4),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: event.occuredAt?.formatTime ?? event.createdAt?.formatTime,
                        style: context.typography.typography1Regular.copyWith(
                          color: context.colors.gray500,
                        ),
                      ),
                      WidgetSpan(
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 4,
                            vertical: 6,
                          ),
                          width: 4,
                          height: 4,
                          decoration: BoxDecoration(
                            color: context.colors.gray400,
                            shape: BoxShape.circle,
                          ),
                        ),
                        style: context.typography.typography1Regular.copyWith(
                          color: context.colors.gray600,
                        ),
                      ),
                      TextSpan(
                        text: event.location,
                        style: context.typography.typography1Regular.copyWith(
                          color: context.colors.gray500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(),
            EventStatusDate(event: event, gap: 4),
            const SizedBox(width: 12),
            SvgPicture.asset(context.assetImages.chevronRight),
          ],
        ),
      ),
    );
  }
}
