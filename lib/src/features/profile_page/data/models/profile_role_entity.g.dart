// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_role_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileRoleEntityImpl _$$ProfileRoleEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileRoleEntityImpl(
      name: json['name'] as String? ?? "parent",
      allowNotification: json['allowNotification'] as bool,
      events: json['events'] as bool,
      redirectedEvents: json['redirectedEvents'] as bool?,
      children: (json['children'] as List<dynamic>?)
          ?.map((e) => ProfileChildEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      comeAndGo: json['comeAndGo'] as bool?,
      classes: (json['classes'] as List<dynamic>?)
          ?.map((e) => ProfileClassEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProfileRoleEntityImplToJson(
        _$ProfileRoleEntityImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'allowNotification': instance.allowNotification,
      'events': instance.events,
      'redirectedEvents': instance.redirectedEvents,
      'children': instance.children?.map((e) => e.toJson()).toList(),
      'comeAndGo': instance.comeAndGo,
      'classes': instance.classes?.map((e) => e.toJson()).toList(),
    };
