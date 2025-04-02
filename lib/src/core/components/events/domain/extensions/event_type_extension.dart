import 'package:flutter/cupertino.dart';
import 'package:kepler_vision/src/core/components/events/domain/models/enums/event_type.dart';
import 'package:kepler_vision/src/core/extensions/build_context_extension.dart';

extension EventTypeExtension on EventType {
  String getLocalizedTextPlural(BuildContext context) {
    return switch (this) {
      EventType.conflict => context.loc.conflicts,
      EventType.smoking => context.loc.smoking,
      EventType.cheating => context.loc.cheating,
      EventType.schedule_update => context.loc.scheduleUpdate,
      EventType.departure => context.loc.departure,
      EventType.redirected_conflict => context.loc.redirectedConflict,
      EventType.arrival => context.loc.arrival
    };
  }

  String getLocalizedText(BuildContext context) {
    return switch (this) {
      EventType.conflict => context.loc.conflict,
      EventType.smoking => context.loc.smoking,
      EventType.cheating => context.loc.cheating,
      EventType.schedule_update => context.loc.scheduleUpdate,
      EventType.departure => context.loc.departure,
      EventType.redirected_conflict => context.loc.redirectedConflict,
      EventType.arrival => context.loc.arrival
    };
  }

  String getFilledAssetPath(BuildContext context) {
    return switch (this) {
      EventType.conflict => context.assetImages.conflictsFilled,
      EventType.smoking => context.assetImages.smokingFilled,
      EventType.cheating => context.assetImages.cheatingFilled,
      //
      EventType.schedule_update => context.assetImages.cheatingFilled,
      EventType.departure => context.assetImages.cheatingFilled,
      EventType.redirected_conflict => context.assetImages.cheatingFilled,
      EventType.arrival => context.assetImages.cheatingFilled,
    };
  }
}

//TODO handle loc
