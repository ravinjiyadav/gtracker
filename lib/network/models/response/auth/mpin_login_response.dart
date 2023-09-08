import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:g_tracker/network/models/response/auth/register_response.dart';

part 'mpin_login_response.freezed.dart';

part 'mpin_login_response.g.dart';

@freezed
class MpinLoginResponse with _$MpinLoginResponse {
  const MpinLoginResponse._();

  factory MpinLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$MpinLoginResponseFromJson(json);

  const factory MpinLoginResponse({
    @JsonKey(name: "status") @Default(false) bool status,
    @JsonKey(name: "code") @Default(-1) int code,
    @JsonKey(name: "message") @Default("") String message,
    @JsonKey(name: "token") required String token,
    @JsonKey(name: "data") GUser? data,
    @JsonKey(name: "page_link") GLink? pageLinks,

  }) = _MpinLoginResponse;
}



//
// @freezed
// class Data with _$Data {
//   const Data._();
//
//   factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
//
//   const factory Data({
//     @JsonKey(name: "id") required int id,
//     @JsonKey(name: "name") required String name,
//     @JsonKey(name: "country_code") required String countryCode,
//     @JsonKey(name: "mobile") required String mobile,
//   }) = _Data;
// }
