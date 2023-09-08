// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_mpin_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SetMpinRequest _$$_SetMpinRequestFromJson(Map<String, dynamic> json) =>
    _$_SetMpinRequest(
      countryCode: json['country_code'] as String,
      phoneNumber: json['mobile'] as String,
      mpin: json['mpin'] as int,
    );

Map<String, dynamic> _$$_SetMpinRequestToJson(_$_SetMpinRequest instance) =>
    <String, dynamic>{
      'country_code': instance.countryCode,
      'mobile': instance.phoneNumber,
      'mpin': instance.mpin,
    };
