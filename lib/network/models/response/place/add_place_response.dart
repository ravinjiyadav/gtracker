import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:g_tracker/network/models/response/place/place.dart';

part 'add_place_response.freezed.dart';

part 'add_place_response.g.dart';

@freezed
class AddPlaceResponse with _$AddPlaceResponse {
  const AddPlaceResponse._();

  factory AddPlaceResponse.fromJson(Map<String, dynamic> json) =>
      _$AddPlaceResponseFromJson(json);

  const factory AddPlaceResponse({
    @JsonKey(name: "status") @Default(false) bool status,
    @JsonKey(name: "code") @Default(-1) int code,
    @JsonKey(name: "message") @Default("") String message,
    @JsonKey(name: "place") required Place place,
  }) = _AddPlaceResponse;
}
