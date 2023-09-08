import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_place_request.freezed.dart';

part 'add_place_request.g.dart';

@freezed
class AddPlaceRequest with _$AddPlaceRequest {
  const AddPlaceRequest._();

  factory AddPlaceRequest.fromJson(Map<String, dynamic> json) =>
      _$AddPlaceRequestFromJson(json);

  const factory AddPlaceRequest({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "type") @Default("polygon") String type,
    @JsonKey(name: "lat", includeIfNull: false) double? lat,
    @JsonKey(name: "lng", includeIfNull: false) double? lng,
    @JsonKey(name: "radius", includeIfNull: false) double? radius,
    @JsonKey(name: "geofence") List<LatLngInfo>? geofence,
  }) = _AddPlaceRequest;
}

@freezed
class LatLngInfo with _$LatLngInfo {
  const LatLngInfo._();

  factory LatLngInfo.fromJson(Map<String, dynamic> json) =>
      _$LatLngInfoFromJson(json);

  const factory LatLngInfo({
    @JsonKey(name: "lat") required double lat,
    @JsonKey(name: "lng") required double lng,
  }) = _LatLngInfo;
}
