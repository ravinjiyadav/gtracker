import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_remove_from_circle_request.freezed.dart';

part 'member_remove_from_circle_request.g.dart';

@freezed
class MemberRemoveFromCircleRequest with _$MemberRemoveFromCircleRequest {
  const MemberRemoveFromCircleRequest._();

  factory MemberRemoveFromCircleRequest.fromJson(Map<String, dynamic> json) =>
      _$MemberRemoveFromCircleRequestFromJson(json);

  const factory MemberRemoveFromCircleRequest({

    @JsonKey(name: 'member_id') required int memberId,
    @JsonKey(name: 'circle_id') required int circleId,
  }) = _MemberRemoveFromCircleRequest;
}
