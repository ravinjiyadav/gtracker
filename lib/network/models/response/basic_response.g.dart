// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BasicResponse _$$_BasicResponseFromJson(Map<String, dynamic> json) =>
    _$_BasicResponse(
      status: json['status'] as bool? ?? false,
      code: json['code'] as int? ?? -1,
      message: json['message'] as String? ?? "",
    );

Map<String, dynamic> _$$_BasicResponseToJson(_$_BasicResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
    };
