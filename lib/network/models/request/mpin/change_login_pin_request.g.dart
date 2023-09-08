// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_login_pin_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChangeLoginPinRequest _$$_ChangeLoginPinRequestFromJson(
        Map<String, dynamic> json) =>
    _$_ChangeLoginPinRequest(
      oldMpin: json['old_mpin'] as int,
      mpin: json['mpin'] as int,
    );

Map<String, dynamic> _$$_ChangeLoginPinRequestToJson(
        _$_ChangeLoginPinRequest instance) =>
    <String, dynamic>{
      'old_mpin': instance.oldMpin,
      'mpin': instance.mpin,
    };
