import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kepler_vision/src/core/components/events/domain/models/enums/event_type.dart';
import 'package:kepler_vision/src/core/components/events/domain/models/event_entity.dart';
import 'package:kepler_vision/src/core/components/roles/presentation/bloc/role_cubit.dart';
import 'package:kepler_vision/src/core/extensions/build_context_extension.dart';
import 'package:kepler_vision/src/core/extensions/date_time_extension.dart';
import 'package:kepler_vision/src/features/settings/domain/entities/role_entity.dart';

class EventStatusDate extends StatelessWidget {
  const EventStatusDate({
    super.key,
    required this.event,
    this.headerStyle,
    this.dateStyle,
    this.gap,
  });

  final EventEntity event;
  final TextStyle? headerStyle;
  final TextStyle? dateStyle;
  final double? gap;

  @override
  Widget build(BuildContext context) {
    final roleTitle = context.watch<RoleCubit>().state.currentRole?.title;

    if (roleTitle == RoleEntity.psychologist &&
        event.type == EventType.conflict) {
      return _PsychologistConflictStatusDate(
        event: event,
        gap: gap,
        headerStyle: headerStyle,
        dateStyle: dateStyle,
      );
    } else if (roleTitle == RoleEntity.teacher &&
        [EventType.cheating, EventType.smoking].contains(event.type)) {
      return _TeacherCheatingSmokingStatusDate(
        event: event,
        gap: gap,
        headerStyle: headerStyle,
        dateStyle: dateStyle,
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}

class _PsychologistConflictStatusDate extends EventStatusDate {
  const _PsychologistConflictStatusDate({
    required super.event,
    super.dateStyle,
    super.gap,
    super.headerStyle,
  });

  Widget _getExpirationText(BuildContext context) {
    final textStyle = dateStyle ?? context.typography.typography1Medium;
    if (event.assignedTo?.isMe == false) {
      return const SizedBox();
    }
    final completedAt = event.completedAt;
    if (completedAt != null) {
      return Text(
        completedAt.formatDateTime,
        style: textStyle.copyWith(
          color: context.colors.success500,
        ),
      );
    }
    final timeLeft = event.deadline!.difference(DateTime.now());
    switch (timeLeft.inSeconds) {
      case > 21600:
        return Text(
          context.loc.hours(timeLeft.inHours),
          style: textStyle.copyWith(
            color: context.colors.blue500,
          ),
        );
      case > 3600:
        return Text(
          context.loc.hours(timeLeft.inHours),
          style: textStyle.copyWith(
            color: context.colors.warning500,
          ),
        );
      case > 0:
        return Text(
          context.loc.minutes(timeLeft.inMinutes),
          style: textStyle.copyWith(
            color: context.colors.error500,
          ),
        );
      default:
        return Text(
          event.deadline!.formatDateTime,
          style: textStyle.copyWith(
            color: context.colors.black,
          ),
        );
    }
  }

  Widget _getExpirationHeaderText(BuildContext context) {
    final textStyle = headerStyle ?? context.typography.textxsMedium;
    if (event.assignedTo?.isMe == false) {
      return const SizedBox();
    }
    if (event.completedAt != null) {
      return Text(
        context.loc.processed,
        style: textStyle.copyWith(
          color: context.colors.success500,
        ),
      );
    }
    if (event.deadline!.isBefore(DateTime.now())) {
      return Text(
        context.loc.timeOut,
        style: textStyle.copyWith(
          color: context.colors.black,
        ),
      );
    }
    return Text(
      context.loc.left,
      style: textStyle.copyWith(
        color: context.colors.gray500,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        _getExpirationHeaderText(context),
        SizedBox(height: gap),
        _getExpirationText(context),
      ],
    );
  }
}

class _TeacherCheatingSmokingStatusDate extends EventStatusDate {
  const _TeacherCheatingSmokingStatusDate({
    required super.event,
    super.dateStyle,
    super.gap,
    super.headerStyle,
  });

  @override
  Widget build(BuildContext context) {
    final headerStyle = this.headerStyle ?? context.typography.textxsMedium;
    if (event.completedAt != null) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            context.loc.processed,
            style: headerStyle.copyWith(
              color: context.colors.success500,
            ),
          ),
          SizedBox(height: gap),
          Text(
            event.completedAt!.formatDateTime,
            style: (dateStyle ?? context.typography.typography1Medium).copyWith(
              color: context.colors.success500,
            ),
          ),
        ],
      );
    }
    return Text(
      context.loc.processing,
      textAlign: TextAlign.end,
      style: headerStyle.copyWith(
        color: context.colors.warning500,
      ),
    );
  }
}
