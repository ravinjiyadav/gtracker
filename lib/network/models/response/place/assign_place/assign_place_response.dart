import 'package:freezed_annotation/freezed_annotation.dart';

part 'assign_place_response.freezed.dart';

part 'assign_place_response.g.dart';

@freezed
class AssignPlaceResponse with _$AssignPlaceResponse {
  const AssignPlaceResponse._();

  factory AssignPlaceResponse.fromJson(Map<String, dynamic> json) =>
      _$AssignPlaceResponseFromJson(json);

  const factory AssignPlaceResponse({
    @JsonKey(name: "status") @Default(false) bool status,
    @JsonKey(name: "code") @Default(-1) int code,
    @JsonKey(name: "message") @Default("") String message,
  }) = _AssignPlaceResponse;
}
