// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_notifications_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetNotificationsRequestImpl _$$GetNotificationsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GetNotificationsRequestImpl(
      role: json['role'] as String,
      cursor: json['cursor'] as String?,
      limit: json['limit'] as String?,
    );

Map<String, dynamic> _$$GetNotificationsRequestImplToJson(
        _$GetNotificationsRequestImpl instance) =>
    <String, dynamic>{
      'role': instance.role,
      'cursor': instance.cursor,
      'limit': instance.limit,
    };
