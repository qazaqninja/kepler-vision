import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kepler_vision/src/app/imports.dart';
import 'package:kepler_vision/src/core/components/events/presentation/widgets/event_tile.dart';
import 'package:kepler_vision/src/core/extensions/build_context_extension.dart';
import 'package:kepler_vision/src/core/extensions/date_time_extension.dart';
import 'package:kepler_vision/src/core/services/injectable/injectable_service.dart';
import 'package:kepler_vision/src/core/widgets/shimmer/shimmer_container.dart';
import 'package:kepler_vision/src/core/widgets/slivers/divided_sliver_child_builder_delegate.dart';
import 'package:kepler_vision/src/features/events/presentation/bloc/events_bloc.dart';
import 'package:kepler_vision/src/features/events/presentation/bloc/events_state.dart';

import '../../../core/components/events/presentation/widgets/event_shimmer_tile.dart';
import 'components/parent_events_app_bar.dart';

class ParentEventsPage extends StatefulWidget {
  const ParentEventsPage({
    super.key,
  });

  @override
  State<ParentEventsPage> createState() => _ParentEventsPageState();
}

class _ParentEventsPageState extends State<ParentEventsPage> {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<EventsBloc>(),
      child: Scaffold(
        appBar: const ParentEventsAppBar(),
        backgroundColor: context.colors.gray100,
        body: BlocBuilder<EventsBloc, EventsState>(
          builder: (context, state) {
            final events = state.events;
            if (events == null) {
              return Container(
                margin: const EdgeInsets.only(top: 8),
                decoration: BoxDecoration(
                  color: context.colors.white,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(12),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(12, 12, 12, 8),
                      child: ShimmerContainer(width: 95, height: 24),
                    ),
                    Expanded(
                      child: ListView.separated(
                        itemCount: 100,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return const ReviewEventShimmerTile();
                        },
                        separatorBuilder: (context, _) {
                          return const Divider(
                            height: 0,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            }

            // Group events by date
            final Map<String, List<int>> groupedEventIndices = {};

            for (int i = 0; i < events.length; i++) {
              final event = events[i];
              final date = event.occuredAt;
              if (date == null) {
                continue;
              }

              String groupKey;
              if (date.isToday) {
                groupKey = context.loc.today;
              } else if (date.isYesterday) {
                groupKey = context.loc.yesterday;
              } else {
                groupKey = date.formatDateWithMonth;
              }

              groupedEventIndices.putIfAbsent(groupKey, () => []);
              groupedEventIndices[groupKey]!.add(i);
            }

            // Sort the keys to ensure Today, Yesterday, and then dates in descending order
            final sortedKeys = groupedEventIndices.keys.toList()
              ..sort((a, b) {
                if (a == context.loc.today) return -1;
                if (b == context.loc.today) return 1;
                if (a == context.loc.yesterday) return -1;
                if (b == context.loc.yesterday) return 1;
                return b.compareTo(a); // Descending order for dates
              });

            return CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Container(
                    margin: const EdgeInsets.only(top: 8),
                    padding: const EdgeInsets.fromLTRB(12, 12, 12, 8),
                    decoration: BoxDecoration(
                      color: context.colors.white,
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(12),
                      ),
                    ),
                    child: Text(
                      context.loc.total(events.length),
                      style: context.typography.typography2Regular.copyWith(
                        color: context.colors.gray500,
                      ),
                    ),
                  ),
                ),
                ...sortedKeys.expand((dateKey) {
                  final indices = groupedEventIndices[dateKey]!;

                  return [
                    // Date header with collapsible button
                    SliverToBoxAdapter(
                      child: Material(
                        color: context.colors.white,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                          child: Text(
                            dateKey,
                            style: context.typography.typography2SemiBold
                                .copyWith(
                              color: context.colors.gray700,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SliverList(
                      delegate: DividedSliverChildBuilderDelegate(
                        builder: (context, index) {
                          final eventIndex = indices[index];
                          final isLastInGroup = index == indices.length - 1;
                          final isLastGroup = dateKey == sortedKeys.last;

                          return Material(
                            color: context.colors.white,
                            borderRadius: isLastInGroup && isLastGroup
                                ? const BorderRadius.vertical(
                                    bottom: Radius.circular(12),
                                  )
                                : null,
                            child: EventTile(
                              event: events[eventIndex],
                            ),
                          );
                        },
                        childCount: indices.length,
                      ),
                    ),
                    if (dateKey != sortedKeys.last)
                      const SliverToBoxAdapter(child: Divider(height: 1)),
                  ];
                }),
              ],
            );
          },
        ),
      ),
    );
  }
}
