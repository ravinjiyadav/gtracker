// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mpin_login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MpinLoginResponse _$$_MpinLoginResponseFromJson(Map<String, dynamic> json) =>
    _$_MpinLoginResponse(
      status: json['status'] as bool? ?? false,
      code: json['code'] as int? ?? -1,
      message: json['message'] as String? ?? "",
      token: json['token'] as String,
      data: json['data'] == null
          ? null
          : GUser.fromJson(json['data'] as Map<String, dynamic>),
      pageLinks: json['page_link'] == null
          ? null
          : GLink.fromJson(json['page_link'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MpinLoginResponseToJson(
        _$_MpinLoginResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'token': instance.token,
      'data': instance.data,
      'page_link': instance.pageLinks,
    };
