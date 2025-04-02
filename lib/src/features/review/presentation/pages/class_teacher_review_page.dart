import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kepler_vision/src/app/imports.dart';
import 'package:kepler_vision/src/core/components/events/presentation/widgets/event_shimmer_tile.dart';
import 'package:kepler_vision/src/core/components/events/presentation/widgets/event_tile.dart';
import 'package:kepler_vision/src/core/extensions/build_context_extension.dart';
import 'package:kepler_vision/src/core/router/router.dart';
import 'package:kepler_vision/src/core/services/injectable/injectable_service.dart';
import 'package:kepler_vision/src/core/widgets/slivers/divided_sliver_child_builder_delegate.dart';
import 'package:kepler_vision/src/features/review/presentation/bloc/review_bloc.dart';
import 'package:kepler_vision/src/features/review/presentation/bloc/review_state.dart';
import 'package:kepler_vision/src/features/review/presentation/widgets/review_teacher_app_bar.dart';

class ClassTeacherReviewPage extends StatelessWidget {
  const ClassTeacherReviewPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<ReviewBloc>(),
        ),
      ],
      child: Scaffold(
        appBar: const ReviewTeacherAppBar(),
        backgroundColor: context.colors.gray100,
        body: BlocBuilder<ReviewBloc, ReviewState>(
          builder: (context, state) {
            final conflicts = state.conflicts;
            return CustomScrollView(
              slivers: [
                // TODO: uncomment for 2nd iteration
                // SliverToBoxAdapter(
                //   child: Padding(
                //     padding: const EdgeInsets.symmetric(horizontal: 12),
                //     child: Row(
                //       children: [
                //         TeacherMainIndicators(
                //           assetPath: context.assetImages.studentsGroup,
                //           title: context.loc.students,
                //           onTap: () {
                //             context.push(
                //               RoutePaths.classesList,
                //             );
                //           },
                //         ),
                //         const SizedBox(width: 8),
                //         TeacherMainIndicators(
                //           assetPath: context.assetImages.calendar,
                //           title: context.loc.schedule,
                //           onTap: () {
                //             context.push(RoutePaths.teacherSchedule);
                //           },
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                // const SliverPadding(padding: EdgeInsets.only(top: 12)),
                // SliverToBoxAdapter(
                //   child: Material(
                //     color: context.colors.white,
                //     borderRadius: const BorderRadius.vertical(
                //       bottom: Radius.circular(12),
                //     ),
                //     child: Padding(
                //       padding: const EdgeInsets.symmetric(vertical: 12),
                //       child: Column(
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children: [
                //           BaseBlocWidget<AnalyticBloc, AnalyticEvent,
                //               AnalyticState>(
                //             bloc: getIt<AnalyticBloc>(),
                //             starterEvent: const AnalyticEvent.loadAllData(
                //               schoolId: '1',
                //             ),
                //             builder: (context, state, bloc) {
                //               return state.maybeWhen(
                //                 orElse: () {
                //                   return const AnalyticBlocShimmer();
                //                 },
                //                 error: (error) => const AnalyticBlocShimmer(),
                //                 loaded: (viewModel) {
                //                   final dateFilter = viewModel
                //                           .analyticsDateFilter ??
                //                       DateFilter.day(startDate: DateTime.now());
                //                   final analytic = viewModel.analytics;
                //                   return Column(
                //                     children: [
                //                       ReviewAnalyticsView(
                //                         analyticsDateFilter: dateFilter,
                //                         analytics: analytic?.data,
                //                       ),
                //                       const SizedBox(height: 12),
                //                       Divider(
                //                         height: 0,
                //                         color: context.colors.gray100,
                //                       ),
                //                       ReviewAnalyticsCategoryTile(
                //                         // onTap: () =>
                //                         //     context.push(RoutePaths.cameraPage),
                //                         buttonText: context.loc.students,
                //                         title: context.loc.studentsWithComments,
                //                         icon: context.icons.group_meeting_call__group_meeting_call_work,
                //                         text: "Нет данных",
                //                       ),
                //                     ],
                //                   );
                //                 },
                //               );
                //             },
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
                // const SliverPadding(
                //   padding: EdgeInsets.symmetric(
                //     vertical: 6,
                //   ),
                // ),
                SliverAppBar(
                  surfaceTintColor: Colors.transparent,
                  expandedHeight: 57,
                  pinned: true,
                  backgroundColor: context.colors.gray100,
                  centerTitle: false,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                      decoration: BoxDecoration(
                        color: context.colors.white,
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  title: Text(
                    context.loc.forChecking,
                    style: context.typography.typography2Medium.copyWith(
                      color: context.colors.black,
                    ),
                  ),
                  actions: [
                    OutlinedButton.icon(
                      iconAlignment: IconAlignment.end,
                      icon: Icon(context.icons.chevron_right),
                      label: Text(
                        context.loc.allEvents,
                      ),
                      onPressed: () => context.push(RoutePaths.events),
                    ),
                    const SizedBox(width: 12),
                  ],
                ),
                if (conflicts == null)
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        Material(
                          color: context.colors.white,
                          child: const ReviewEventShimmerTile(),
                        ),
                        Divider(
                          height: 0,
                          color: context.colors.gray100,
                        ),
                        Material(
                          color: context.colors.white,
                          borderRadius: const BorderRadius.vertical(
                            bottom: Radius.circular(12),
                          ),
                          child: const ReviewEventShimmerTile(),
                        ),
                      ],
                    ),
                  )
                //else if (conflicts.length == 0) TODO
                else
                  SliverList(
                    delegate: DividedSliverChildBuilderDelegate(
                      childCount: conflicts.length,
                      builder: (_, index) {
                        return Material(
                          color: context.colors.white,
                          borderRadius: index == conflicts.length - 1
                              ? const BorderRadius.vertical(
                                  bottom: Radius.circular(12),
                                )
                              : null,
                          child: EventTile(
                            event: conflicts[index],
                          ),
                        );
                      },
                    ),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}
