import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_request.freezed.dart';

part 'verify_otp_request.g.dart';

@freezed
class VerifyOtpRequest with _$VerifyOtpRequest {
  const VerifyOtpRequest._();

  factory VerifyOtpRequest.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpRequestFromJson(json);

  const factory VerifyOtpRequest({
    @JsonKey(name: "country_code") required String countryCode,
    @JsonKey(name: "mobile") required String mobile,
    @JsonKey(name: "otp") required int otp,
  }) = _VerifyOtpRequest;
}
