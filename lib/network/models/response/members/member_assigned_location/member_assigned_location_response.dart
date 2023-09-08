import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_assigned_location_response.freezed.dart';

part 'member_assigned_location_response.g.dart';

@freezed
class MemberAssignedLocations with _$MemberAssignedLocations {
  const MemberAssignedLocations._();

  factory MemberAssignedLocations.fromJson(Map<String, dynamic> json) => _$MemberAssignedLocationsFromJson(json);

  const factory MemberAssignedLocations({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "user_id") required int userId,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "lat") required double lat,
    @JsonKey(name: "lng") required double lng,
    @JsonKey(name: "type") required String type,
  }) = _MemberAssignedLocations;
}