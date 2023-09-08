// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mpin_login_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MpinLoginRequest _$$_MpinLoginRequestFromJson(Map<String, dynamic> json) =>
    _$_MpinLoginRequest(
      countryCode: json['country_code'] as String,
      phoneNumber: json['mobile'] as String,
      mpin: json['password'] as int,
      deviceToken: json['device_token'] as String,
    );

Map<String, dynamic> _$$_MpinLoginRequestToJson(_$_MpinLoginRequest instance) =>
    <String, dynamic>{
      'country_code': instance.countryCode,
      'mobile': instance.phoneNumber,
      'password': instance.mpin,
      'device_token': instance.deviceToken,
    };
