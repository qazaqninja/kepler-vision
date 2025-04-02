import 'package:flutter/material.dart';
import 'package:kepler_vision/src/core/components/filter/presentation/widgets/floating_label_radio_list_tile.dart';
import 'package:kepler_vision/src/core/extensions/build_context_extension.dart';
import 'package:kepler_vision/src/core/widgets/popups/sheet_popup.dart';

Future<void> showSelectTeacherRolePopup(BuildContext context) {
  return showSheetPopup(
    context,
    title: Text(context.loc.switchUp),
    builder: (context) => Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        FloatingLabelRadioListTile(
          selected: true,
          onTap: () {},
          text: context.loc.myClass,
          label: "7F Alpamys",
        ),
        const Divider(height: 8),
        FloatingLabelRadioListTile(
          selected: false,
          onTap: () {},
          text: context.loc.mySubjects,
          label: context.loc.classCount(6),
        ),
        const Divider(height: 8),
      ],
    ),
  );
}
