import 'package:freezed_annotation/freezed_annotation.dart';

part 'members_location_response.freezed.dart';

part 'members_location_response.g.dart';

@freezed
class MembersLocations with _$MembersLocations {
  const MembersLocations._();

  factory MembersLocations.fromJson(Map<String, dynamic> json) => _$MembersLocationsFromJson(json);

  const factory MembersLocations({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "member_id") required int memberId,
 //   @JsonKey(name: "user_id") required int userId,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "lat")  double? lat,
    @JsonKey(name: "lng")  double? lng,
    @JsonKey(name: "photo") required String photo,
  }) = _MembersLocations;
}