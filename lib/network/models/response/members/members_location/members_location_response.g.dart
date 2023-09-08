// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'members_location_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MembersLocations _$$_MembersLocationsFromJson(Map<String, dynamic> json) =>
    _$_MembersLocations(
      id: json['id'] as int,
      memberId: json['member_id'] as int,
      name: json['name'] as String,
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
      photo: json['photo'] as String,
    );

Map<String, dynamic> _$$_MembersLocationsToJson(_$_MembersLocations instance) =>
    <String, dynamic>{
      'id': instance.id,
      'member_id': instance.memberId,
      'name': instance.name,
      'lat': instance.lat,
      'lng': instance.lng,
      'photo': instance.photo,
    };
