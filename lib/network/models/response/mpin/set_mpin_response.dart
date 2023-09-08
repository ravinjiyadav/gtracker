import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:g_tracker/network/models/response/auth/register_response.dart';

part 'set_mpin_response.g.dart';

part 'set_mpin_response.freezed.dart';

@freezed
class SetMpinResponse with _$SetMpinResponse {
  const SetMpinResponse._();

  factory SetMpinResponse.fromJson(Map<String, dynamic> json) =>
      _$SetMpinResponseFromJson(json);

  const factory SetMpinResponse({
    @JsonKey(name: "status") @Default(false) bool status,
    @JsonKey(name: "code") @Default(-1) int code,
    @JsonKey(name: "message") @Default("") String message,
    @JsonKey(name: "data") GUser? data,
  }) = _SetMpinResponse;
}
