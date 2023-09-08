// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginRequest _$$_LoginRequestFromJson(Map<String, dynamic> json) =>
    _$_LoginRequest(
      countryCode: json['country_code'] as String,
      phoneNumber: json['mobile'] as String,
      forgotPassword: json['forgetPassword'] as bool?,
    );

Map<String, dynamic> _$$_LoginRequestToJson(_$_LoginRequest instance) {
  final val = <String, dynamic>{
    'country_code': instance.countryCode,
    'mobile': instance.phoneNumber,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('forgetPassword', instance.forgotPassword);
  return val;
}
