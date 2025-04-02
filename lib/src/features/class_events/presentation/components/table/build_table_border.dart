import 'package:kepler_vision/src/app/imports.dart';
import 'package:kepler_vision/src/features/class_events/presentation/components/table/border_side.dart';

TableBorder buildTableBorder(BuildContext context) {
  return TableBorder(
    top: borderSide(context),
    bottom: borderSide(context),
    left: borderSide(context),
    right: borderSide(context),
    horizontalInside: borderSide(context),
    verticalInside: borderSide(context),
    borderRadius: BorderRadius.circular(8),
  );
}
