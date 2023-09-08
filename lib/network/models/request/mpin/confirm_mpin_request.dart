import 'package:freezed_annotation/freezed_annotation.dart';

part 'confirm_mpin_request.g.dart';

part 'confirm_mpin_request.freezed.dart';

@freezed
class ConfirmMpinRequest with _$ConfirmMpinRequest {
  const ConfirmMpinRequest._();

  factory ConfirmMpinRequest.fromJson(Map<String, dynamic> json) =>
      _$ConfirmMpinRequestFromJson(json);

  const factory ConfirmMpinRequest({
    @JsonKey(name: "country_code") required String countryCode,
    @JsonKey(name: "mobile") required String phoneNumber,
    @JsonKey(name: "name",includeIfNull: false)  String? name,
    @JsonKey(name: "location",includeIfNull: false)  String? location,
    @JsonKey(name: "isRegister",includeIfNull: false)  bool? forget,
    @JsonKey(name: "mpin") required int mpin,
    @JsonKey(name: "device_token") required String deviceToken,
  }) = _ConfirmMpinRequest;
}
