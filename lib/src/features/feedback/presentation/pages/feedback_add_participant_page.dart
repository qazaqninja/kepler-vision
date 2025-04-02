import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kepler_vision/src/app/imports.dart';
import 'package:kepler_vision/src/core/components/events/domain/models/enums/event_type.dart';
import 'package:kepler_vision/src/core/extensions/build_context_extension.dart';
import 'package:kepler_vision/src/features/feedback/presentation/bloc/feedback_bloc.dart';
import 'package:kepler_vision/src/features/feedback/presentation/bloc/feedback_state.dart';
import 'package:kepler_vision/src/features/feedback/presentation/components/feedback_add_participant_app_bar.dart';
import 'package:kepler_vision/src/features/feedback/presentation/components/feedback_add_participant_view.dart';

class FeedbackAddParticipantPage extends StatelessWidget {
  const FeedbackAddParticipantPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeedbackBloc, FeedbackState>(
      builder: (context, state) {
        final event = state.event;
        if (event == null) {
          return Scaffold(
            backgroundColor: context.colors.gray100,
            appBar: const FeedbackAddParticipantAppBar(
              eventType: EventType.conflict,
            ),
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        }

        return Scaffold(
          appBar: FeedbackAddParticipantAppBar(eventType: event.type),
          backgroundColor: context.colors.gray100,
          body: Column(
            children: [
              Expanded(child: FeedbackAddParticipantView(event: event)),
              const SizedBox(height: 8),
              Container(
                height: MediaQuery.paddingOf(context).bottom,
                color: context.colors.white,
              ),
            ],
          ),
        );
      },
    );
  }
}
