// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VerifyOtpResponse _$$_VerifyOtpResponseFromJson(Map<String, dynamic> json) =>
    _$_VerifyOtpResponse(
      status: json['status'] as bool? ?? false,
      code: json['code'] as int? ?? -1,
      message: json['message'] as String? ?? "",
    );

Map<String, dynamic> _$$_VerifyOtpResponseToJson(
        _$_VerifyOtpResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
    };
