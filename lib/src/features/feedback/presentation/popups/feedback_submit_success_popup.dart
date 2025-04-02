import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kepler_vision/src/core/components/events/domain/models/enums/event_feedback_destination.dart';
import 'package:kepler_vision/src/core/extensions/build_context_extension.dart';
import 'package:kepler_vision/src/core/widgets/padding/default_horizontal_padding.dart';
import 'package:kepler_vision/src/core/widgets/popups/base_popup.dart';

Future<void> showFeedbackSubmitSuccessPopup(
  BuildContext context, {
  required EventFeedbackDestination destination,
}) {
  void popUntilRootCallback(BuildContext context) =>
      Navigator.of(context).popUntil((route) => route.isFirst);
  return showBasePopup(
    context,
    onDismiss: popUntilRootCallback,
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
                          SvgPicture.asset(
                            context.assetImages.doneCheckmark,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            context.loc.feedbackSuccessfullySubmitted,
                            style: context.typography.textxlBold.copyWith(
                              color: context.colors.brand400,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            switch (destination) {
                              EventFeedbackDestination.student =>
                                context.loc.studentsWillBeNotified,
                              EventFeedbackDestination.parent =>
                                context.loc.parentsWillBeNotified,
                            },
                            style: context.typography.textmdMedium.copyWith(
                              color: context.colors.black,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () => popUntilRootCallback(context),
                      child: Text(context.loc.close),
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
