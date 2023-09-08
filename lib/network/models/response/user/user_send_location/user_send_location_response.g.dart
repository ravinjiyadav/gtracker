// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_send_location_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserSendLocations _$$_UserSendLocationsFromJson(Map<String, dynamic> json) =>
    _$_UserSendLocations(
      id: json['UUID'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_UserSendLocationsToJson(
        _$_UserSendLocations instance) =>
    <String, dynamic>{
      'UUID': instance.id,
      'lat': instance.lat,
      'lng': instance.lng,
    };
