import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_response.freezed.dart';
part 'verify_otp_response.g.dart';

@freezed
class VerifyOtpResponse with _$VerifyOtpResponse {
  const VerifyOtpResponse._();

  factory VerifyOtpResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpResponseFromJson(json);

  const factory VerifyOtpResponse({
    @JsonKey(name: "status") @Default(false) bool status,
    @JsonKey(name: "code") @Default(-1) int code,
    @JsonKey(name: "message") @Default("") String message,
// data pending
}) = _VerifyOtpResponse;

}
// FIXME check if data parsing is need for it or not
//{
//     "status": true,
//     "code": 200,
//     "message": "OTP successfully verfied.",
//     "data": {
//         "id": 1,
//         "name": null,
//         "country_code": "+91",
//         "mobile": "7354536507",
//         "otp": "979567",
//         "otp_verified_at": "2022-12-08T10:36:08.716549Z",
//         "location_id": null,
//         "mpin": null,
//         "remember_token": null,
//         "created_at": "2022-12-08T10:30:30.000000Z",
//         "updated_at": "2022-12-08T10:36:08.000000Z"
//     }
// }