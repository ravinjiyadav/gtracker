import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_current_location_request.freezed.dart';

part 'send_current_location_request.g.dart';

@freezed
class SendCurrentLocationRequest with _$SendCurrentLocationRequest {
  const SendCurrentLocationRequest._();

  factory SendCurrentLocationRequest.fromJson(Map<String, dynamic> json) =>
      _$SendCurrentLocationRequestFromJson(json);

  const factory SendCurrentLocationRequest({
    @JsonKey(name: "locations") List<Locations>? locations,
  }) = _SendCurrentLocationRequest;
}

@freezed
class Locations with _$Locations {
  const Locations._();

  factory Locations.fromJson(Map<String, dynamic> json) =>
      _$LocationsFromJson(json);

  const factory Locations({
    @JsonKey(name: "lat") required double lat,
    @JsonKey(name: "lng") required double lng,
    @JsonKey(name: "UUID") required String uuid,
  }) = _Locations;
}
