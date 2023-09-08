// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_location_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MemberLocationHistory _$$_MemberLocationHistoryFromJson(
        Map<String, dynamic> json) =>
    _$_MemberLocationHistory(
      id: json['id'] as int,
      memberId: json['member_id'] as int,
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
    );

Map<String, dynamic> _$$_MemberLocationHistoryToJson(
        _$_MemberLocationHistory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'member_id': instance.memberId,
      'lat': instance.lat,
      'lng': instance.lng,
    };
