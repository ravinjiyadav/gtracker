import 'package:freezed_annotation/freezed_annotation.dart';

part 'basic_response.g.dart';

part 'basic_response.freezed.dart';

@freezed
class BasicResponse with _$BasicResponse {
  const BasicResponse._();

  factory BasicResponse.fromJson(Map<String, dynamic> json) =>
      _$BasicResponseFromJson(json);

  const factory BasicResponse({
    @JsonKey(name: "status") @Default(false) bool status,
    @JsonKey(name: "code") @Default(-1) int code,
    @JsonKey(name: "message") @Default("") String message,
  }) = _BasicResponse;
}
