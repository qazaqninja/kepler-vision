import 'package:fluent_ui/fluent_ui.dart' hide Divider;
import 'package:flutter/material.dart';
import 'package:kepler_vision/src/core/base/base_bloc/bloc/base_bloc_widget.dart';
import 'package:kepler_vision/src/core/components/events/domain/extensions/event_type_extension.dart';
import 'package:kepler_vision/src/core/extensions/build_context_extension.dart';
import 'package:kepler_vision/src/core/extensions/date_time_extension.dart';
import 'package:kepler_vision/src/core/extensions/string_extenstion.dart';
import 'package:kepler_vision/src/core/services/injectable/injectable_service.dart';
import 'package:kepler_vision/src/core/widgets/buttons/switchable_icon_button.dart';
import 'package:kepler_vision/src/features/notifications/domain/entities/notification_entity.dart';
import 'package:kepler_vision/src/features/notifications/domain/requests/get_notifications_request.dart';
import 'package:kepler_vision/src/features/notifications/presentation/bloc/notification_bloc.dart';
import 'package:kepler_vision/src/features/notifications/presentation/widgets/notification_item.dart';

class NotificationDetailPage extends StatelessWidget {
  const NotificationDetailPage({
    super.key,
    required this.role,
  });

  final String role;

  @override
  Widget build(BuildContext context) {
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
                    onTap: () => Navigator.of(context).pop(),
                    icon: context.icons.chevron_left,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      role.getRoleText(context).uppercaseFirst(),
                      style: context.typography.textlgSemibold.copyWith(
                        color: context.colors.gray800,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: BaseBlocWidget<NotificationBloc, NotificationEvent, NotificationState>(
        bloc: getIt<NotificationBloc>(),
        starterEvent: NotificationEvent.getNotification(
          GetNotificationsRequest(
            role: role,
          ),
        ),
        builder: (context, state, bloc) {
          return state.maybeWhen(
            orElse: () {
              return _buildShimmerList(context);
            },
            error: (error) {
              return _buildShimmerList(context);
            },
            loaded: (viewModel) {
              final notifications = viewModel.notifications!.data;

              return ListView(
                padding: const EdgeInsets.only(top: 12),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16.0,
                      bottom: 8.0,
                    ),
                    child: Text(
                      'Сегодня',
                      style: context.typography.textsmSemibold.copyWith(
                        color: context.colors.gray500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  ...notifications.map((notification) => _buildNotificationItem(context, notification)),
                  const SizedBox(height: 12),
                ],
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildShimmerList(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemBuilder: (context, index) {
        return const NotificationItemShimmer();
      },
      separatorBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 6.0),
          child: Divider(
            color: context.colors.gray100,
          ),
        );
      },
      itemCount: 15,
    );
  }

  Widget _buildNotificationItem(BuildContext context, NotificationEntity notification) {
    final timeFormatted = notification.timestamp.formatTime;

    return notification.map(
      // Default case
      (baseNotification) => _buildGenericNotification(
        imagePath: '',
        context,
        timeFormatted,
        title: 'Уведомление',
        subtitle: 'Новое уведомление',
        iconData: Icons.circle,
        iconColor: context.colors.gray500,
      ),
      smoking: (smokingNotification) => _buildGenericNotification(
        context,
        imagePath: context.assetImages.smokingFilled,
        timeFormatted,
        title: notification.role == 'teacher'
            ? '${smokingNotification.className} класс: ${smokingNotification.eventType.getLocalizedText(context)}'
            : 'Класс: Отмечено курение',
        subtitle: '${smokingNotification.className} был отмечен в событии.',
        hasActionLink: true,
      ),

      arrival: (arrivalNotification) => _buildGenericNotification(
        isIcon: true,
        context,
        timeFormatted,
        title: 'Прибытие',
        subtitle: 'Зашел в школу: ${arrivalNotification.studentName}',
        iconData: context.icons.login_1__arrow_enter_frame_left_login_point_rectangle,
        iconColor: context.colors.success500,
      ),

      // Departure
      departure: (departureNotification) => _buildGenericNotification(
        isIcon: true,
        context,
        timeFormatted,
        title: 'Отбытие',
        subtitle: 'Вышел из школы: ${departureNotification.studentName}',
        iconData: context.icons.logout_1__arrow_exit_frame_leave_logout_rectangle_right,
        iconColor: context.colors.error500,
      ),

      // Conflict
      conflict: (conflictNotification) => _buildGenericNotification(
        imagePath: context.assetImages.conflictsFilled,
        context,
        timeFormatted,
        title: notification.role == 'teacher'
            ? '${conflictNotification.className} класс: ${conflictNotification.eventType.getLocalizedText(context)}'
            : 'Отмечен конфликт',
        subtitle: notification.role == 'teacher'
            ? '${conflictNotification.studentCount} ученика отмечены в событии.'
            : notification.role == 'psychologist'
                ? 'Место: ${conflictNotification.floor} этаж, ${conflictNotification.location}'
                : '${conflictNotification.studentName} был отмечен в событии.',
        hasActionLink: true,
      ),

      // Schedule Update
      scheduleUpdate: (scheduleUpdateNotification) => _buildGenericNotification(
        context,
        timeFormatted,
        title: 'Обновление расписания на ${scheduleUpdateNotification.date.formatDateWithMonth}',
        subtitle: 'Перейти',
        iconData: context.icons.blank_calendar__blank_calendar_date_day_month_empty,
        iconColor: context.colors.warning500,
        hasActionLink: true,
        isIcon: true,
      ),

      // Redirected Conflict
      redirectedConflict: (redirectedNotification) => _buildGenericNotification(
        context,
        timeFormatted,
        title: 'Перенаправленный конфликт',
        subtitle:
            '${redirectedNotification.studentName} переадресовал вам событие, #${redirectedNotification.eventNumber}',
        iconData: context.icons.add_1__expand_cross_buttons_button_more_remove_plus_add___mathematics_math,
        iconColor: context.colors.warning500,
        hasActionLink: true,
        imagePath: context.assetImages.conflictsFilled,
      ),
      cheating: (cheatingNotification) => _buildGenericNotification(
        context,
        timeFormatted,
        title: notification.role == 'teacher'
            ? '${cheatingNotification.className} класс: ${cheatingNotification.eventType.getLocalizedText(context)}'
            : 'Отмечено Списывание',
        subtitle: 'Замечено событие.',
        hasActionLink: true,
        imagePath: context.assetImages.cheatingFilled,
      ),
    );
  }

  Widget _buildGenericNotification(
    BuildContext context,
    String time, {
    required String title,
    required String subtitle,
    IconData? iconData,
    Color? iconColor,
    bool hasActionLink = false,
    bool isIcon = false,
    String? imagePath,
  }) {
    return Column(
      children: [
        NotificationItem(
          isIcon: isIcon,
          imagePath: imagePath,
          title: title,
          subtitle: subtitle,
          time: time,
          iconColor: iconColor,
          iconData: iconData,
          hasActionLink: hasActionLink,
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}
