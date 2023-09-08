// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Place _$$_PlaceFromJson(Map<String, dynamic> json) => _$_Place(
      userId: json['user_id'] as int? ?? -1,
      id: json['id'] as int,
      name: json['name'] as String,
      type: json['type'] as String? ?? "polygon",
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
      radius: (json['radius'] as num?)?.toDouble(),
      latArray: json['lat_array'] as String?,
      lngArray: json['lng_array'] as String?,
    );

Map<String, dynamic> _$$_PlaceToJson(_$_Place instance) => <String, dynamic>{
      'user_id': instance.userId,
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'lat': instance.lat,
      'lng': instance.lng,
      'radius': instance.radius,
      'lat_array': instance.latArray,
      'lng_array': instance.lngArray,
    };
