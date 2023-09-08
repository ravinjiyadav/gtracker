// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VerifyOtpRequest _$$_VerifyOtpRequestFromJson(Map<String, dynamic> json) =>
    _$_VerifyOtpRequest(
      countryCode: json['country_code'] as String,
      mobile: json['mobile'] as String,
      otp: json['otp'] as int,
    );

Map<String, dynamic> _$$_VerifyOtpRequestToJson(_$_VerifyOtpRequest instance) =>
    <String, dynamic>{
      'country_code': instance.countryCode,
      'mobile': instance.mobile,
      'otp': instance.otp,
    };
