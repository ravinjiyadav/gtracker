import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:g_tracker/network/models/response/circles/circle.dart';

part 'circle_response.freezed.dart';

part 'circle_response.g.dart';

@freezed
class CircleListResponse with _$CircleListResponse {
  const CircleListResponse._();

  factory CircleListResponse.fromJson(Map<String, dynamic> json) =>
      _$CircleListResponseFromJson(json);

  const factory CircleListResponse({
    @JsonKey(name: "status") @Default(false) bool status,
    @JsonKey(name: "code") @Default(-1) int code,
    @JsonKey(name: "message") @Default("") String message,
    @JsonKey(name: "circle") required List<Circle> circles,
  }) = _CircleListResponse;
}
