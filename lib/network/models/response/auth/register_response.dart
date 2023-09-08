import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_response.g.dart';

part 'register_response.freezed.dart';

@freezed
class RegisterResponse with _$RegisterResponse {
  const RegisterResponse._();

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);

  const factory RegisterResponse({
    @JsonKey(name: "status") @Default(false) bool status,
    @JsonKey(name: "code") @Default(-1) int code,
    @JsonKey(name: "message") @Default("") String message,
    @JsonKey(name: "redirect")  String? redirect,
    @JsonKey(name: "data") GUser? data,
  }) = _RegisterResponse;
}

@freezed
class GUser with _$GUser {
  const GUser._();

  factory GUser.fromJson(Map<String, dynamic> json) => _$GUserFromJson(json);

  const factory GUser({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "name")  String? name,
    @JsonKey(name: "photo")  String? photo,
    @JsonKey(name: "dob")  String? dob,
    @JsonKey(name: "relation")  String? relation,
    @JsonKey(name: "email")  String? email,
    @JsonKey(name: "country_code") required String countryCode,
    @JsonKey(name: "mobile") required String mobile,
    @JsonKey(name: "otp") dynamic otp,
    @JsonKey(name: "mpin") @Default(0) int mpin,
    @JsonKey(name: "circle_id")  int? circleId,
    @JsonKey(name: "device_id")  int? deviceId,
    @JsonKey(name: "parent_id") @Default(0) int parentId,
    @JsonKey(name: "location_id") int? locationId,
    @JsonKey(name: "is_admin") @Default(0) int isAdmin,
    @JsonKey(name: "device_token")  String? deviceToken,
  }) = _GUser;
}

@freezed
class GLink with _$GLink {
  const GLink._();

  factory GLink.fromJson(Map<String, dynamic> json) => _$GLinkFromJson(json);

  const factory GLink({
    @JsonKey(name: "aboutus")  String? aboutUs,
    @JsonKey(name: "privacy")  String? privacy,
    @JsonKey(name: "terms")  String? terms,
    @JsonKey(name: "faq")  String? faq,
  }) = _GLink;
}


