import 'package:freezed_annotation/freezed_annotation.dart';

part 'mpin_login_request.g.dart';

part 'mpin_login_request.freezed.dart';

@freezed
class MpinLoginRequest with _$MpinLoginRequest {
  const MpinLoginRequest._();

  factory MpinLoginRequest.fromJson(Map<String, dynamic> json) =>
      _$MpinLoginRequestFromJson(json);

  const factory MpinLoginRequest({
    @JsonKey(name: "country_code") required String countryCode,
    @JsonKey(name: "mobile") required String phoneNumber,
    @JsonKey(name: "password") required int mpin,
    @JsonKey(name: "device_token") required String deviceToken,
  }) = _MpinLoginRequest;
}
