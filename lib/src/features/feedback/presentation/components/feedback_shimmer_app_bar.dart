import 'package:kepler_vision/src/app/imports.dart';
import 'package:kepler_vision/src/core/components/events/domain/extensions/event_type_extension.dart';
import 'package:kepler_vision/src/core/components/events/domain/models/enums/event_type.dart';
import 'package:kepler_vision/src/core/components/events/domain/models/event_entity.dart';
import 'package:kepler_vision/src/core/components/events/presentation/widgets/event_status_date.dart';
import 'package:kepler_vision/src/core/extensions/build_context_extension.dart';
import 'package:kepler_vision/src/core/extensions/date_time_extension.dart';
import 'package:kepler_vision/src/core/widgets/buttons/custom_icon_button.dart';
import 'package:kepler_vision/src/core/widgets/shimmer/shimmer_container.dart';

class FeedbackAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FeedbackAppBar({super.key, required this.event});

  final EventEntity? event;

  @override
  Size get preferredSize => const Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    final event = this.event;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        child: Row(
          children: [
            CustomIconButton(
              onTap: context.pop,
              icon: context.icons.chevron_left,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (event != null) ...[
                    Text(
                      event.type.getLocalizedText(context),
                      style: context.typography.textxlBold.copyWith(
                        color: context.colors.gray800,
                      ),
                    ),
                    Text(
                      event.createdAt!.formatDateTimeFull,
                      style: context.typography.textsmMedium.copyWith(
                        color: context.colors.gray500,
                      ),
                    ),
                  ] else ...const [
                    ShimmerContainer(width: 98, height: 30),
                    SizedBox(height: 4),
                    ShimmerContainer(width: 113, height: 20),
                  ],
                ],
              ),
            ),
            if (event != null && event.type == EventType.conflict)
              Expanded(
                child: EventStatusDate(
                  event: event,
                  headerStyle: context.typography.textsmRegular,
                  dateStyle: context.typography.textlgSemibold,
                ),
              )
            else if (event == null)
              const Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ShimmerContainer(width: 90, height: 20),
                  SizedBox(height: 4),
                  ShimmerContainer(width: 113, height: 28),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
