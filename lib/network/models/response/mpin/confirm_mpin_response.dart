import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:g_tracker/network/models/response/auth/register_response.dart';

part 'confirm_mpin_response.g.dart';

part 'confirm_mpin_response.freezed.dart';

@freezed
class ConfirmMpinResponse with _$ConfirmMpinResponse {
  const ConfirmMpinResponse._();

  factory ConfirmMpinResponse.fromJson(Map<String, dynamic> json) =>
      _$ConfirmMpinResponseFromJson(json);

  const factory ConfirmMpinResponse({
    @JsonKey(name: "status") @Default(false) bool status,
    @JsonKey(name: "code") @Default(-1) int code,
    @JsonKey(name: "message") @Default("") String message,
    @JsonKey(name: "data") GUser? data,
    @JsonKey(name: "page_link") GLink? pageLinks,
    @JsonKey(name: "token") @Default("") String token,
  }) = _ConfirmMpinResponse;
}
