import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kepler_vision/src/core/components/filter/presentation/widgets/events_filter_view.dart';
import 'package:kepler_vision/src/core/extensions/build_context_extension.dart';
import 'package:kepler_vision/src/core/widgets/popups/sheet_popup.dart';
import 'package:kepler_vision/src/features/events/presentation/bloc/events_bloc.dart';
import 'package:kepler_vision/src/features/events/presentation/bloc/events_event.dart';
import 'package:kepler_vision/src/features/events/presentation/bloc/events_state.dart';

Future<void> showEventsFilterPopup(BuildContext context) {
  return showSheetPopup(
    context,
    title: Text(context.loc.filters),
    builder: (_) => BlocProvider.value(
      value: context.read<EventsBloc>(),
      child: BlocBuilder<EventsBloc, EventsState>(
        builder: (context, state) {
          return EventsFilterView(
            initialFilter: state.filter,
            count: state.count,
            onFilterConfirm: (filter) {
              context.read<EventsBloc>().add(
                    EventsFilterUpdated(filter),
                  );
              context.pop();
            },
            onFilterSelected: (filter) => context.read<EventsBloc>().add(
                  EventsPreliminaryCountFetched(filter),
                ),
          );
        },
      ),
    ),
  );
}
