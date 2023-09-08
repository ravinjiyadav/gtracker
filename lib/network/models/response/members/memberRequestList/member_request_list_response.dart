//member_request_list_response

import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_request_list_response.freezed.dart';

part 'member_request_list_response.g.dart';

@freezed
class MemberRequests with _$MemberRequests {
  const MemberRequests._();

  factory MemberRequests.fromJson(Map<String, dynamic> json) => _$MemberRequestsFromJson(json);

  const factory MemberRequests({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "user_id") @Default(-1) int userId,
    @JsonKey(name: "photo") String? photo,
    @JsonKey(name: "circle_id")  int? circleId,
    @JsonKey(name: "device_id") int? deviceId,
    @JsonKey(name: "place_id") int? placeId,
    @JsonKey(name: "sender_name") String? senderName,
  }) = _MemberRequests;
}

