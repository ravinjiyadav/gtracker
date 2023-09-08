// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trackable_device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TrackableDevice _$$_TrackableDeviceFromJson(Map<String, dynamic> json) =>
    _$_TrackableDevice(
      id: json['id'] as int,
      imei: json['imei'] as String,
      userId: json['user_id'] as int? ?? -1,
    );

Map<String, dynamic> _$$_TrackableDeviceToJson(_$_TrackableDevice instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imei': instance.imei,
      'user_id': instance.userId,
    };
