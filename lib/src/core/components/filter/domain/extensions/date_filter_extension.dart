import 'package:flutter/widgets.dart';
import 'package:kepler_vision/src/core/components/filter/domain/models/camera_filter.dart';
import 'package:kepler_vision/src/core/components/filter/domain/models/date_filter.dart';
import 'package:kepler_vision/src/core/components/filter/domain/models/events_filter.dart';
import 'package:kepler_vision/src/core/extensions/build_context_extension.dart';

extension EventsFilterExtension on EventsFilter {
  bool get isDefault => date is! DateFilterDay || eventTypes.isNotEmpty;
}

extension CameraFilterExtensions on CameraFilter {
  bool get isDefault => date is! DateFilterDay || eventTypes.isNotEmpty;
}

extension DateFilterExtension on DateFilter {
  String getFilterText(BuildContext context) {
    return map(
      day: (_) => context.loc.forDay,
      week: (_) => context.loc.forWeek,
      month: (_) => context.loc.forMonth,
      custom: (_) => context.loc.forPeriod,
    );
  }

  DateTime getStartDate() {
    return map(
      day: (day) => day.startDate,
      week: (week) => week.startDate,
      month: (month) => month.startDate,
      custom: (custom) => custom.startDate,
    );
  }

  DateTime getEndDate() {
    return map(
      day: (day) => day.startDate,
      week: (week) => week.startDate.add(const Duration(days: 6)),
      month: (month) {
        final year = month.startDate.month == 12 ? month.startDate.year + 1 : month.startDate.year;
        final nextMonth = month.startDate.month == 12 ? 1 : month.startDate.month + 1;
        return DateTime(year, nextMonth, 0);
      },
      custom: (custom) => custom.endDate,
    );
  }
}
