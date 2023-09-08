import 'package:freezed_annotation/freezed_annotation.dart';

part 'circle.freezed.dart';

part 'circle.g.dart';

@freezed
class Circle with _$Circle {
  const Circle._();

  factory Circle.fromJson(Map<String, dynamic> json) => _$CircleFromJson(json);

  const factory Circle({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "user_id") @Default(-1) int userId,
    @JsonKey(name: "show_my_location_to_others") @Default(true) bool showMyLocationToOthers,
    @JsonKey(name: "show_members_location_to_others") @Default(true) bool showMembersLocationToOthers,
    @JsonKey(name: "isOwner") @Default(true) bool isOwner,
  }) = _Circle;
}