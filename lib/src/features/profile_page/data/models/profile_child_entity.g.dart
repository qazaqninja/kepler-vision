// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_child_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileChildEntityImpl _$$ProfileChildEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileChildEntityImpl(
      id: (json['id'] as num?)?.toInt(),
      fullName: json['fullName'] as String?,
      email: json['email'] as String?,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$ProfileChildEntityImplToJson(
        _$ProfileChildEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'email': instance.email,
      'imageUrl': instance.imageUrl,
    };
