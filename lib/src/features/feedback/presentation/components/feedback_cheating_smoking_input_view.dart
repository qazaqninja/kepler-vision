import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kepler_vision/src/app/imports.dart';
import 'package:kepler_vision/src/core/components/events/domain/models/event_entity.dart';
import 'package:kepler_vision/src/core/extensions/build_context_extension.dart';
import 'package:kepler_vision/src/core/widgets/padding/default_horizontal_padding.dart';
import 'package:kepler_vision/src/features/feedback/presentation/bloc/feedback_bloc.dart';
import 'package:kepler_vision/src/features/feedback/presentation/bloc/feedback_event.dart';
import 'package:kepler_vision/src/features/feedback/presentation/components/feedback_suspect_tile.dart';

class FeedbackCheatingSmokingInputView extends StatelessWidget {
  const FeedbackCheatingSmokingInputView({
    super.key,
    required this.event,
  });

  final EventEntity event;

  @override
  Widget build(BuildContext context) {
    return DefaultHorizontalPadding(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            context.loc.eventDescription,
            style: context.typography.textsmMedium.copyWith(
              color: context.colors.gray700,
            ),
          ),
          const SizedBox(height: 4),
          TextFormField(
            onChanged: (value) => context.read<FeedbackBloc>().add(
                  FeedbackDescriptionChanged(value),
                ),
            minLines: 1,
            maxLines: 6,
            decoration: InputDecoration(
              hintText: context.loc.comment,
            ),
          ),
          const SizedBox(height: 32),
          for (final involvedPerson in event.involvedPersons)
            Column(
              children: [
                FeedbackSuspectTile(suspect: involvedPerson),
                const SizedBox(height: 14),
                TextFormField(
                  minLines: 1,
                  maxLines: 6,
                  decoration: InputDecoration(
                    hintText: context.loc.comment,
                  ),
                ),
                const SizedBox(height: 12),
                Divider(),
              ],
            ),
          Spacer(),
          ElevatedButton(
            onPressed: () => context.read<FeedbackBloc>().add(
                  FeedbackTeacherSubmitted(),
                ),
            child: Text(context.loc.send),
          ),
        ],
      ),
    );
  }
}
