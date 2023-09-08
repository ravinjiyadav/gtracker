import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_response.freezed.dart';

part 'forgot_password_response.g.dart';

@freezed
class ForgotPasswordResponse with _$ForgotPasswordResponse {
  const ForgotPasswordResponse._();

  factory ForgotPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordResponseFromJson(json);

  const factory ForgotPasswordResponse({
    @JsonKey(name: "status") @Default(false) bool status,
    @JsonKey(name: "code") @Default(-1) int code,
    @JsonKey(name: "message") @Default("") String message,
    @JsonKey(name: "data") required BasicGUser data,
  }) = _ForgotPasswordResponse;
}

@freezed
class BasicGUser with _$BasicGUser {
  const BasicGUser._();

  factory BasicGUser.fromJson(Map<String, dynamic> json) =>
      _$BasicGUserFromJson(json);

  const factory BasicGUser({
    @JsonKey(name: "country_code") required String countryCode,
    @JsonKey(name: "mobile") required String mobile,
    @JsonKey(name: "otp") @Default(0) int otp,
  }) = _BasicGUser;
}
