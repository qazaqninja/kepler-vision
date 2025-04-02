import 'package:kepler_vision/src/app/imports.dart';
import 'package:kepler_vision/src/core/components/filter/domain/extensions/date_filter_extension.dart';
import 'package:kepler_vision/src/core/components/filter/domain/models/date_filter.dart';
import 'package:kepler_vision/src/core/extensions/build_context_extension.dart';
import 'package:kepler_vision/src/core/extensions/date_time_extension.dart';
import 'package:kepler_vision/src/core/router/router.dart';
import 'package:kepler_vision/src/features/review/presentation/widgets/review_analytics_category_tile.dart';
import 'package:kepler_vision/src/features/review/presentation/widgets/review_analytics_indicator_view.dart';

class AnalyticBlocShimmer extends StatelessWidget {
  const AnalyticBlocShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.loc.analytics,
                      style: context.typography.typography2Medium.copyWith(
                        color: context.colors.black,
                      ),
                    ),
                    Text(
                      DateTimeExtension.formatDatePeriodFull(DateTime.now(), DateTime.now()),
                      style: context.typography.typography1Regular.copyWith(
                        color: context.colors.gray600,
                      ),
                    ),
                  ],
                ),
              ),
              OutlinedButton.icon(
                iconAlignment: IconAlignment.end,
                icon: Icon(context.icons.chevron_down),
                label: Text(
                  DateFilter.day(startDate: DateTime.now()).getFilterText(context),
                ),
                onPressed: () => (),
              ),
            ],
          ),
        ),
        const SizedBox(height: 14),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Expanded(
                child: ReviewAnalyticsIndicatorView(
                  color: const Color(0xFFD92D20),
                  assetPath: context.assetImages.conflict,
                  title: context.loc.conflicts,
                ),
              ),
              Expanded(
                child: ReviewAnalyticsIndicatorView(
                  color: const Color(0xFF53B1FD),
                  assetPath: context.assetImages.smoking,
                  title: context.loc.smoking,
                ),
              ),
              Expanded(
                child: ReviewAnalyticsIndicatorView(
                  color: const Color(0xFF37BE88),
                  assetPath: context.assetImages.cheating,
                  title: context.loc.cheating,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        ReviewAnalyticsCategoryTile(
          onTap: () => context.push(RoutePaths.cameraPage),
          buttonText: context.loc.cameras,
          title: context.loc.hotspots,
          icon: context.icons.location_pin_3__navigation_map_maps_pin_gps_location,
        ),
        Divider(
          height: 0,
          color: context.colors.gray100,
        ),
        ReviewAnalyticsCategoryTile(
          onTap: () {
            context.push(RoutePaths.classEvents);
          },
          buttonText: context.loc.classes,
          title: context.loc.troubleClass,
          icon: context.icons.group_meeting_call__group_meeting_call_work,
        ),
      ],
    );
  }
}
