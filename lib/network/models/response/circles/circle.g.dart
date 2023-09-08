// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'circle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Circle _$$_CircleFromJson(Map<String, dynamic> json) => _$_Circle(
      id: json['id'] as int,
      name: json['name'] as String,
      userId: json['user_id'] as int? ?? -1,
      showMyLocationToOthers:
          json['show_my_location_to_others'] as bool? ?? true,
      showMembersLocationToOthers:
          json['show_members_location_to_others'] as bool? ?? true,
      isOwner: json['isOwner'] as bool? ?? true,
    );

Map<String, dynamic> _$$_CircleToJson(_$_Circle instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'user_id': instance.userId,
      'show_my_location_to_others': instance.showMyLocationToOthers,
      'show_members_location_to_others': instance.showMembersLocationToOthers,
      'isOwner': instance.isOwner,
    };
