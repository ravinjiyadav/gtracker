import 'package:freezed_annotation/freezed_annotation.dart';

part 'place.freezed.dart';

part 'place.g.dart';

@freezed
class Place with _$Place {
  const Place._();

  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);

  const factory Place({
    @JsonKey(name: "user_id") @Default(-1) int userId,
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "type") @Default("polygon") String type,
    @JsonKey(name: "lat") double? lat,
    @JsonKey(name: "lng") double? lng,
    @JsonKey(name: "radius") double? radius,
    @JsonKey(name: "lat_array") String? latArray,
    @JsonKey(name: "lng_array") String? lngArray,
  }) = _Place;
}
