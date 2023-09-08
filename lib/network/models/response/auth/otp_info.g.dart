// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OtpInfo _$$_OtpInfoFromJson(Map<String, dynamic> json) => _$_OtpInfo(
      id: json['id'] as int,
      countryCode: json['country_code'] as String,
      mobile: json['mobile'] as String,
      otp: json['otp'],
      mpin: json['mpin'] as int? ?? 0,
    );

Map<String, dynamic> _$$_OtpInfoToJson(_$_OtpInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'country_code': instance.countryCode,
      'mobile': instance.mobile,
      'otp': instance.otp,
      'mpin': instance.mpin,
    };
