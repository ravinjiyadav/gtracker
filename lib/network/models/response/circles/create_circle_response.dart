import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:g_tracker/network/models/response/circles/circle.dart';

part 'create_circle_response.freezed.dart';

part 'create_circle_response.g.dart';

@freezed
class CreateCircleResponse with _$CreateCircleResponse {
  const CreateCircleResponse._();

  factory CreateCircleResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateCircleResponseFromJson(json);

  const factory CreateCircleResponse({
    @JsonKey(name: "status") @Default(false) bool status,
    @JsonKey(name: "code") @Default(-1) int code,
    @JsonKey(name: "message") @Default("") String message,
    @JsonKey(name: "circle") required Circle circle,
  }) = _CreateCircleResponse;
}
