// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_member_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddMemberRequest _$$_AddMemberRequestFromJson(Map<String, dynamic> json) =>
    _$_AddMemberRequest(
      name: json['name'] as String,
      circleId: json['circle_id'] as int,
      deviceId: json['device_id'] as int?,
      mobile: json['mobile'] as String?,
      countryCode: json['country_code'] as String?,
    );

Map<String, dynamic> _$$_AddMemberRequestToJson(_$_AddMemberRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'circle_id': instance.circleId,
      'device_id': instance.deviceId,
      'mobile': instance.mobile,
      'country_code': instance.countryCode,
    };
