// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_assigned_location_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MemberAssignedLocations _$$_MemberAssignedLocationsFromJson(
        Map<String, dynamic> json) =>
    _$_MemberAssignedLocations(
      id: json['id'] as int,
      userId: json['user_id'] as int,
      name: json['name'] as String,
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      type: json['type'] as String,
    );

Map<String, dynamic> _$$_MemberAssignedLocationsToJson(
        _$_MemberAssignedLocations instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'name': instance.name,
      'lat': instance.lat,
      'lng': instance.lng,
      'type': instance.type,
    };
