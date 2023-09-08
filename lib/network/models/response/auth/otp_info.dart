import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_info.freezed.dart';

part 'otp_info.g.dart';

@freezed
class OtpInfo with _$OtpInfo {
  const OtpInfo._();

  factory OtpInfo.fromJson(Map<String, dynamic> json) =>
      _$OtpInfoFromJson(json);

  const factory OtpInfo({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "country_code") required String countryCode,
    @JsonKey(name: "mobile") required String mobile,
    @JsonKey(name: "otp") dynamic otp,
    @JsonKey(name: "mpin") @Default(0) int mpin,
  }) = _OtpInfo;
}
