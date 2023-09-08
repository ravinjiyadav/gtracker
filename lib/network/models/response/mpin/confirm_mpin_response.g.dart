// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_mpin_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConfirmMpinResponse _$$_ConfirmMpinResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ConfirmMpinResponse(
      status: json['status'] as bool? ?? false,
      code: json['code'] as int? ?? -1,
      message: json['message'] as String? ?? "",
      data: json['data'] == null
          ? null
          : GUser.fromJson(json['data'] as Map<String, dynamic>),
      pageLinks: json['page_link'] == null
          ? null
          : GLink.fromJson(json['page_link'] as Map<String, dynamic>),
      token: json['token'] as String? ?? "",
    );

Map<String, dynamic> _$$_ConfirmMpinResponseToJson(
        _$_ConfirmMpinResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
      'page_link': instance.pageLinks,
      'token': instance.token,
    };
