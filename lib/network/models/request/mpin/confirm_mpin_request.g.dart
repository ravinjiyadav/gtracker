// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_mpin_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConfirmMpinRequest _$$_ConfirmMpinRequestFromJson(
        Map<String, dynamic> json) =>
    _$_ConfirmMpinRequest(
      countryCode: json['country_code'] as String,
      phoneNumber: json['mobile'] as String,
      name: json['name'] as String?,
      location: json['location'] as String?,
      forget: json['isRegister'] as bool?,
      mpin: json['mpin'] as int,
      deviceToken: json['device_token'] as String,
    );

Map<String, dynamic> _$$_ConfirmMpinRequestToJson(
    _$_ConfirmMpinRequest instance) {
  final val = <String, dynamic>{
    'country_code': instance.countryCode,
    'mobile': instance.phoneNumber,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('location', instance.location);
  writeNotNull('isRegister', instance.forget);
  val['mpin'] = instance.mpin;
  val['device_token'] = instance.deviceToken;
  return val;
}
