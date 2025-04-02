import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kepler_vision/src/app/imports.dart';
import 'package:kepler_vision/src/core/services/injectable/injectable_service.dart';
import 'package:kepler_vision/src/features/feedback/presentation/bloc/feedback_bloc.dart';
import 'package:kepler_vision/src/features/feedback/presentation/bloc/feedback_state.dart';
import 'package:kepler_vision/src/features/feedback/presentation/popups/feedback_submit_success_popup.dart';

class FeedbackWrapperPage extends StatelessWidget {
  const FeedbackWrapperPage({
    super.key,
    required this.eventId,
    required this.child,
  });

  final int eventId;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<FeedbackBloc>(
        param1: eventId,
      ),
      child: BlocListener<FeedbackBloc, FeedbackState>(
        listenWhen: (prev, curr) => prev.submitState != curr.submitState,
        listener: (context, state) {
          if (state.submitState is FeedbackSubmitSuccess) {
            showFeedbackSubmitSuccessPopup(
              context,
              destination: state.destination,
            );
          }
        },
        child: child,
      ),
    );
  }
}
