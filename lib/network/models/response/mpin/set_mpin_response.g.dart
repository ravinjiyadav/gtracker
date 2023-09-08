// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_mpin_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SetMpinResponse _$$_SetMpinResponseFromJson(Map<String, dynamic> json) =>
    _$_SetMpinResponse(
      status: json['status'] as bool? ?? false,
      code: json['code'] as int? ?? -1,
      message: json['message'] as String? ?? "",
      data: json['data'] == null
          ? null
          : GUser.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SetMpinResponseToJson(_$_SetMpinResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };
