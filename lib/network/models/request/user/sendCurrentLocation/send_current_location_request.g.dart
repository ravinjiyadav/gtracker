// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_current_location_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SendCurrentLocationRequest _$$_SendCurrentLocationRequestFromJson(
        Map<String, dynamic> json) =>
    _$_SendCurrentLocationRequest(
      locations: (json['locations'] as List<dynamic>?)
          ?.map((e) => Locations.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SendCurrentLocationRequestToJson(
        _$_SendCurrentLocationRequest instance) =>
    <String, dynamic>{
      'locations': instance.locations,
    };

_$_Locations _$$_LocationsFromJson(Map<String, dynamic> json) => _$_Locations(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      uuid: json['UUID'] as String,
    );

Map<String, dynamic> _$$_LocationsToJson(_$_Locations instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
      'UUID': instance.uuid,
    };
