// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_place_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddPlaceResponse _$$_AddPlaceResponseFromJson(Map<String, dynamic> json) =>
    _$_AddPlaceResponse(
      status: json['status'] as bool? ?? false,
      code: json['code'] as int? ?? -1,
      message: json['message'] as String? ?? "",
      place: Place.fromJson(json['place'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AddPlaceResponseToJson(_$_AddPlaceResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'place': instance.place,
    };
