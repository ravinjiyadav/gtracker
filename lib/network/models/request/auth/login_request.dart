import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request.freezed.dart';

part 'login_request.g.dart';

@freezed
class LoginRequest with _$LoginRequest {
  const LoginRequest._();

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);

  const factory LoginRequest({
    @JsonKey(name: "country_code") required String countryCode,
    @JsonKey(name: "mobile") required String phoneNumber,
    @JsonKey(name: "forgetPassword", includeIfNull: false) bool? forgotPassword,
  }) = _LoginRequest;
}
