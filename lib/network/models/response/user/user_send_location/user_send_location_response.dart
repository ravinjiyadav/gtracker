import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_send_location_response.freezed.dart';
part 'user_send_location_response.g.dart';

@freezed
class UserSendLocations with _$UserSendLocations {
  const UserSendLocations._();

  factory UserSendLocations.fromJson(Map<String, dynamic> json) => _$UserSendLocationsFromJson(json);

  const factory UserSendLocations({
    @JsonKey(name: "UUID")  String? id,
    @JsonKey(name: "lat")  double? lat,
    @JsonKey(name: "lng")  double? lng,
  }) = _UserSendLocations;
}