// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_circle_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateCircleResponse _$$_CreateCircleResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CreateCircleResponse(
      status: json['status'] as bool? ?? false,
      code: json['code'] as int? ?? -1,
      message: json['message'] as String? ?? "",
      circle: Circle.fromJson(json['circle'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CreateCircleResponseToJson(
        _$_CreateCircleResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'circle': instance.circle,
    };
