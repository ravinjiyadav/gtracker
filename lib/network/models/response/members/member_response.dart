import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:g_tracker/network/models/response/members/member.dart';

part 'member_response.freezed.dart';

part 'member_response.g.dart';

@freezed
class MemberResponse with _$MemberResponse {
  const MemberResponse._();

  factory MemberResponse.fromJson(Map<String, dynamic> json) =>
      _$MemberResponseFromJson(json);

  const factory MemberResponse({
    @JsonKey(name: "status") @Default(false) bool status,
    @JsonKey(name: "code") @Default(-1) int code,
    @JsonKey(name: "message") @Default("") String message,
    @JsonKey(name: "member") required Member member,
  }) = _MemberResponse;
}
