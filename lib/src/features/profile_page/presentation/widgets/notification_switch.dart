import 'package:flutter/material.dart';
import 'package:kepler_vision/src/core/extensions/build_context_extension.dart';

class NotificationSwitch extends StatelessWidget {
  final String title;
  final bool value;
  final ValueChanged<bool> onChanged;

  const NotificationSwitch({
    super.key,
    required this.title,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final String subtitle = value ? context.loc.turnOn : context.loc.turnOff;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 4,
            children: [
              Text(
                title,
                style: context.typography.textmdSemibold.copyWith(
                  color: context.colors.black,
                ),
              ),
              Text(
                subtitle,
                style: context.typography.textsmRegular.copyWith(
                  color: context.colors.gray500,
                ),
              ),
            ],
          ),
          Switch(
            value: value,
            onChanged: onChanged,
            activeColor: context.colors.white,
            activeTrackColor: context.colors.indigo500,
            inactiveTrackColor: context.colors.gray300,
            inactiveThumbColor: context.colors.white,
            trackOutlineColor: const WidgetStatePropertyAll(
              Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }
}
