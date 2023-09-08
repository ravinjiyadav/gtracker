import 'package:freezed_annotation/freezed_annotation.dart';

part 'assign_place_request.freezed.dart';

part 'assign_place_request.g.dart';

@freezed
class AssignPlaceRequest with _$AssignPlaceRequest {
  const AssignPlaceRequest._();

  factory AssignPlaceRequest.fromJson(Map<String, dynamic> json) =>
      _$AssignPlaceRequestFromJson(json);

  const factory AssignPlaceRequest({
    @JsonKey(name: "member_id") required int member_id,
    @JsonKey(name: "place_id") required int place_id,

  }) = _AssignPlaceRequest;
}
