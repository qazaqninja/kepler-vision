// import 'package:fluent_ui/fluent_ui.dart';
import 'package:fluent_ui/fluent_ui.dart' hide Divider;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kepler_vision/src/core/components/roles/presentation/bloc/role_cubit.dart';
import 'package:kepler_vision/src/core/extensions/build_context_extension.dart';
import 'package:kepler_vision/src/core/extensions/string_extenstion.dart';
import 'package:kepler_vision/src/features/notifications/presentation/widgets/notification_card.dart';

import '../../../core/router/router.dart';
import '../../../core/widgets/buttons/switchable_icon_button.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final availableRoles = context.read<RoleCubit>().state.availableRoles;

    return Scaffold(
      backgroundColor: context.colors.gray100,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: Container(
          color: context.colors.white,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
              child: Row(
                children: [
                  SwitchableIconButton(
                    onTap: () => context.pop(),
                    icon: context.icons.chevron_left,
                  ),
                  const SizedBox(width: 12),
                  Text(
                    context.loc.notifications,
                    style: context.typography.textlgSemibold.copyWith(
                      color: context.colors.gray800,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Container(
          decoration: BoxDecoration(
            color: context.colors.white,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(12),
              bottom: Radius.circular(12),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  top: 12.0,
                  bottom: 8.0,
                ),
                child: Text(
                  'Сегодня',
                  style: context.typography.textsmSemibold.copyWith(
                    color: context.colors.gray500,
                  ),
                ),
              ),
              ...availableRoles.asMap().entries.map((entry) {
                final index = entry.key;
                final role = entry.value;

                final Color iconColor = index % 3 == 0
                    ? context.colors.blueLight400
                    : index % 3 == 1
                        ? context.colors.indigo400
                        : context.colors.ros400;

                final String subtitle = index % 3 == 0
                    ? 'Пробный период истек'
                    : index % 3 == 1
                        ? 'Задание: Сложение'
                        : 'Новое событие: "Конфликт"';

                final String time = index % 2 == 0 ? '14:45' : '13:10';

                final bool hasCounter = index == 0;

                return Column(
                  children: [
                    NotificationCard(
                      title: role.title.getRoleText(context).uppercaseFirst(),
                      subtitle: subtitle,
                      time: time,
                      iconColor: iconColor,
                      hasCounter: hasCounter,
                      // counterValue: hasCounter
                      onTap: () => _navigateToDetailPage(context, role.title),
                    ),
                    if (index < availableRoles.length - 1) Divider(color: context.colors.gray100),
                  ],
                );
              }),
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToDetailPage(BuildContext context, String category) {
    context.push(RoutePaths.notificationsDetail, extra: category);
  }
}
