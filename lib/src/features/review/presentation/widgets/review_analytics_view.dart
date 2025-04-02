import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kepler_vision/src/app/imports.dart';
import 'package:kepler_vision/src/core/components/filter/domain/models/date_filter.dart';
import 'package:kepler_vision/src/core/components/filter/presentation/popups/date_filter_popup.dart';
import 'package:kepler_vision/src/core/extensions/build_context_extension.dart';
import 'package:kepler_vision/src/core/extensions/date_time_extension.dart';
import 'package:kepler_vision/src/features/analytics/domain/entities/analytic_entity.dart';
import 'package:kepler_vision/src/features/review/presentation/bloc/review_bloc.dart';
import 'package:kepler_vision/src/features/review/presentation/bloc/review_event.dart';
import 'package:kepler_vision/src/features/review/presentation/widgets/review_analytics_indicator_view.dart';

class ReviewAnalyticsView extends StatelessWidget {
  const ReviewAnalyticsView({
    super.key,
    required this.analyticsDateFilter,
    this.analytics,
  });
  
  final DateFilter analyticsDateFilter;
  final AnalyticEntity? analytics;

  String _getAnalyticsFilterText(BuildContext context, DateFilter dateFilter) {
    return dateFilter.map(
      day: (_) => context.loc.forDay,
      week: (_) => context.loc.forWeek,
      month: (_) => context.loc.forMonth,
      custom: (_) => context.loc.forPeriod,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
                      DateTimeExtension.formatDatePeriodFull(
                        analyticsDateFilter.startDate,
                        analyticsDateFilter.endDate,
                      ),
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
                  _getAnalyticsFilterText(
                    context,
                    analyticsDateFilter,
                  ),
                ),
                onPressed: () => showDateFilterPopup(
                  context,
                  title: context.loc.analytics,
                  dateFilter: analyticsDateFilter,
                  onSelected: (dateFilter) => context.read<ReviewBloc>().add(
                    ReviewAnalyticsFilterChanged(
                      dateFilter,
                    ),
                  ),
                ),
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
                  value: analytics?.conflictCount,
                ),
              ),
              Expanded(
                child: ReviewAnalyticsIndicatorView(
                  color: const Color(0xFF53B1FD),
                  assetPath: context.assetImages.smoking,
                  title: context.loc.smoking,
                  value: analytics?.smokingCount,
                ),
              ),
              Expanded(
                child: ReviewAnalyticsIndicatorView(
                  color: const Color(0xFF37BE88),
                  assetPath: context.assetImages.cheating,
                  title: context.loc.cheating,
                  value: analytics?.cheatingCount,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
