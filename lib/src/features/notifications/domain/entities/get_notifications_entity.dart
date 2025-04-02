import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kepler_vision/src/features/notifications/domain/entities/notificaiton_meta_entity.dart';
import 'package:kepler_vision/src/features/notifications/domain/entities/notification_entity.dart';

part 'get_notifications_entity.freezed.dart';
// Comment out this line temporarily
// part 'get_notifications_entity.g.dart';

@freezed
class GetNotificationsEntity with _$GetNotificationsEntity {
  factory GetNotificationsEntity({
    required String status,
    required NotificaitonMetaEntity meta,
    required List<NotificationEntity> data,
  }) = _GetNotificationsEntity;

  factory GetNotificationsEntity.fromJson(Map<String, dynamic> json) {
    return GetNotificationsEntity(
      status: json['status'] as String,
      meta: NotificaitonMetaEntity.fromJson(json['meta'] as Map<String, dynamic>),
      data: (json['data'] as List).map((item) => NotificationEntity.fromJson(item as Map<String, dynamic>)).toList(),
    );
  }
}

extension GetNotificationsEntityX on GetNotificationsEntity {
  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'meta': meta.toJson(),
      'data': data.map((e) => e.toJson()).toList(),
    };
  }
}
