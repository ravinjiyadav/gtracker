//accept_decline_member_request

import 'package:freezed_annotation/freezed_annotation.dart';

part 'accept_decline_member_request.freezed.dart';
part 'accept_decline_member_request.g.dart';

@freezed
class AcceptDeclineMemberRequest with _$AcceptDeclineMemberRequest {
  const AcceptDeclineMemberRequest._();

  factory AcceptDeclineMemberRequest.fromJson(Map<String, dynamic> json) =>
      _$AcceptDeclineMemberRequestFromJson(json);

  const factory AcceptDeclineMemberRequest({
    @JsonKey(name: 'request_id') required int requestId,
    @JsonKey(name: 'isRequestAccepted') required int isRequestAccepted
  }) = _AcceptDeclineMemberRequest;
}
