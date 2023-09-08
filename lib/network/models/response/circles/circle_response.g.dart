// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'circle_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CircleListResponse _$$_CircleListResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CircleListResponse(
      status: json['status'] as bool? ?? false,
      code: json['code'] as int? ?? -1,
      message: json['message'] as String? ?? "",
      circles: (json['circle'] as List<dynamic>)
          .map((e) => Circle.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CircleListResponseToJson(
        _$_CircleListResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'circle': instance.circles,
    };
