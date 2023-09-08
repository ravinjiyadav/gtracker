// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Member _$$_MemberFromJson(Map<String, dynamic> json) => _$_Member(
      id: json['id'] as int,
      userId: json['user_id'] as int? ?? -1,
      name: json['name'] as String?,
      photo: json['photo'] as String?,
      status: json['status'] as String?,
      circleId: json['circle_id'] as int?,
      deviceId: json['device_id'] as int?,
      placeId: json['place_id'] as int?,
    );

Map<String, dynamic> _$$_MemberToJson(_$_Member instance) => <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'name': instance.name,
      'photo': instance.photo,
      'status': instance.status,
      'circle_id': instance.circleId,
      'device_id': instance.deviceId,
      'place_id': instance.placeId,
    };
