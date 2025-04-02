import 'dart:io' as io;

import 'package:flutter_svg/flutter_svg.dart';
import 'package:kepler_vision/src/app/imports.dart';
import 'package:kepler_vision/src/core/components/events/domain/models/event_entity.dart';
import 'package:kepler_vision/src/core/extensions/build_context_extension.dart';
import 'package:kepler_vision/src/core/router/router.dart';
import 'package:kepler_vision/src/core/widgets/layout/two_children_overlapping_view.dart';
import 'package:kepler_vision/src/core/widgets/padding/default_horizontal_padding.dart';

class FeedbackVideoSheetWrapper extends StatelessWidget {
  const FeedbackVideoSheetWrapper({
    super.key,
    required this.event,
    required this.child,
  });

  final EventEntity event;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final thumbnailPath = event.videoThumbnailPath;
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(
        top: Radius.circular(
          12,
        ),
      ),
      child: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: TwoChildrenOverlappingView(
              firstChild: thumbnailPath != null ? GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () =>
                    context.push(
                      RoutePaths.eventVideo,
                      extra: event,
                    ),
                child: Stack(
                  fit: StackFit.passthrough,
                  children: [
                    Image.file(
                      io.File(thumbnailPath),
                      fit: BoxFit.fitWidth,
                    ),
                    Positioned.fill(
                      child: Center(
                        child: SvgPicture.asset(
                          context.assetImages.play,
                        ),
                      ),
                    ),
                  ],
                ),
              ) : const SizedBox.shrink(),
              secondChild: DecoratedBox(
                decoration: BoxDecoration(
                  color: context.colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 12),
                    DefaultHorizontalPadding(
                      child: Text(
                        context.loc.place(
                          event.location!,
                          event.camera!,
                        ),
                        style: context.typography.textsmRegular.copyWith(
                          color: context.colors.gray500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Expanded(child: child),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
