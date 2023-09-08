//


import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_location_history_response.freezed.dart';

part 'member_location_history_response.g.dart';

@freezed
class MemberLocationHistory with _$MemberLocationHistory {
  const MemberLocationHistory._();

  factory MemberLocationHistory.fromJson(Map<String, dynamic> json) => _$MemberLocationHistoryFromJson(json);

  const factory MemberLocationHistory({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "member_id") required int memberId,
    @JsonKey(name: "lat") required double lat,
    @JsonKey(name: "lng") required double lng,
  }) = _MemberLocationHistory;
}