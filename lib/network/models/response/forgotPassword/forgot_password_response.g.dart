// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ForgotPasswordResponse _$$_ForgotPasswordResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ForgotPasswordResponse(
      status: json['status'] as bool? ?? false,
      code: json['code'] as int? ?? -1,
      message: json['message'] as String? ?? "",
      data: BasicGUser.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ForgotPasswordResponseToJson(
        _$_ForgotPasswordResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$_BasicGUser _$$_BasicGUserFromJson(Map<String, dynamic> json) =>
    _$_BasicGUser(
      countryCode: json['country_code'] as String,
      mobile: json['mobile'] as String,
      otp: json['otp'] as int? ?? 0,
    );

Map<String, dynamic> _$$_BasicGUserToJson(_$_BasicGUser instance) =>
    <String, dynamic>{
      'country_code': instance.countryCode,
      'mobile': instance.mobile,
      'otp': instance.otp,
    };
