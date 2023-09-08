// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeviceResponse _$$_DeviceResponseFromJson(Map<String, dynamic> json) =>
    _$_DeviceResponse(
      status: json['status'] as bool? ?? false,
      code: json['code'] as int? ?? -1,
      message: json['message'] as String? ?? "",
      device: TrackableDevice.fromJson(json['device'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DeviceResponseToJson(_$_DeviceResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'device': instance.device,
    };

_$_DeviceListResponse _$$_DeviceListResponseFromJson(
        Map<String, dynamic> json) =>
    _$_DeviceListResponse(
      status: json['status'] as bool? ?? false,
      code: json['code'] as int? ?? -1,
      message: json['message'] as String? ?? "",
      devices: (json['devices'] as List<dynamic>)
          .map((e) => TrackableDevice.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DeviceListResponseToJson(
        _$_DeviceListResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'devices': instance.devices,
    };
