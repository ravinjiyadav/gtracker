import 'package:freezed_annotation/freezed_annotation.dart';

part 'member.freezed.dart';

part 'member.g.dart';

@freezed
class Member with _$Member {
  const Member._();

  factory Member.fromJson(Map<String, dynamic> json) => _$MemberFromJson(json);

  const factory Member({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "user_id") @Default(-1) int userId,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "photo") String? photo,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "circle_id")  int? circleId,
    @JsonKey(name: "device_id") int? deviceId,
    @JsonKey(name: "place_id") int? placeId,
  }) = _Member;
}

