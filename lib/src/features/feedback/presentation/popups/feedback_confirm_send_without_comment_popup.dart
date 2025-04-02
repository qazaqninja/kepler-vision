import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kepler_vision/src/core/extensions/build_context_extension.dart';
import 'package:kepler_vision/src/core/widgets/padding/default_horizontal_padding.dart';
import 'package:kepler_vision/src/core/widgets/popups/base_popup.dart';
import 'package:kepler_vision/src/features/feedback/presentation/bloc/feedback_bloc.dart';
import 'package:kepler_vision/src/features/feedback/presentation/bloc/feedback_event.dart';

Future<void> showFeedbackConfirmSendWithoutCommentPopup(BuildContext blocContext) {
  return showBasePopup(
    blocContext,
    builder: (context) {
      return SizedBox(
        height: context.height * 0.65,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: context.colors.white,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(20),
            ),
          ),
          child: Material(
            type: MaterialType.transparency,
            child: SafeArea(
              child: DefaultHorizontalPadding(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            context.icons
                                .chat_bubble_text_square__messages_message_bubble_text_square_chat,
                            size: 60,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            context.loc.sendWithoutCommentQuestion,
                            style: context.typography.textxlBold.copyWith(
                              color: context.colors.black,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            context.loc.peopleWillBeNotifiedWithoutFeedback,
                            style: context.typography.textmdMedium.copyWith(
                              color: context.colors.black,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    OutlinedButton(
                      onPressed: () {
                        blocContext.read<FeedbackBloc>().add(FeedbackTeacherNoCommentsSubmitted());
                        context.pop();
                      },
                      child: Text(context.loc.yes),
                    ),
                    const SizedBox(height: 6),
                    ElevatedButton(
                      onPressed: context.pop,
                      child: Text(context.loc.cancel),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}
