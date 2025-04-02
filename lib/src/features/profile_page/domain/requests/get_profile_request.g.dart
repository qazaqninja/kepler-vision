// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_profile_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetProfileRequestImpl _$$GetProfileRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GetProfileRequestImpl(
      schoolId: (json['schoolId'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
    );

Map<String, dynamic> _$$GetProfileRequestImplToJson(
        _$GetProfileRequestImpl instance) =>
    <String, dynamic>{
      'schoolId': instance.schoolId,
      'userId': instance.userId,
    };
