import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_location_history_request.freezed.dart';
part 'member_location_history_request.g.dart';

@freezed
class MemberLocationHistoryRequest with _$MemberLocationHistoryRequest {
  const MemberLocationHistoryRequest._();

  factory MemberLocationHistoryRequest.fromJson(Map<String, dynamic> json) =>
      _$MemberLocationHistoryRequestFromJson(json);

  const factory MemberLocationHistoryRequest({
    @JsonKey(name: 'member_id') required int memberId,
    @JsonKey(name: 'date') required String date
  }) = _MemberLocationHistoryRequest;
}
