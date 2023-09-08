// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_request_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MemberRequests _$$_MemberRequestsFromJson(Map<String, dynamic> json) =>
    _$_MemberRequests(
      id: json['id'] as int,
      userId: json['user_id'] as int? ?? -1,
      photo: json['photo'] as String?,
      circleId: json['circle_id'] as int?,
      deviceId: json['device_id'] as int?,
      placeId: json['place_id'] as int?,
      senderName: json['sender_name'] as String?,
    );

Map<String, dynamic> _$$_MemberRequestsToJson(_$_MemberRequests instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'photo': instance.photo,
      'circle_id': instance.circleId,
      'device_id': instance.deviceId,
      'place_id': instance.placeId,
      'sender_name': instance.senderName,
    };
