// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_place_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddPlaceRequest _$$_AddPlaceRequestFromJson(Map<String, dynamic> json) =>
    _$_AddPlaceRequest(
      name: json['name'] as String,
      type: json['type'] as String? ?? "polygon",
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
      radius: (json['radius'] as num?)?.toDouble(),
      geofence: (json['geofence'] as List<dynamic>?)
          ?.map((e) => LatLngInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AddPlaceRequestToJson(_$_AddPlaceRequest instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'type': instance.type,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('lat', instance.lat);
  writeNotNull('lng', instance.lng);
  writeNotNull('radius', instance.radius);
  val['geofence'] = instance.geofence;
  return val;
}

_$_LatLngInfo _$$_LatLngInfoFromJson(Map<String, dynamic> json) =>
    _$_LatLngInfo(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
    );

Map<String, dynamic> _$$_LatLngInfoToJson(_$_LatLngInfo instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };
