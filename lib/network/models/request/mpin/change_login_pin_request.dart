import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_login_pin_request.freezed.dart';

part 'change_login_pin_request.g.dart';

@freezed
class ChangeLoginPinRequest with _$ChangeLoginPinRequest {
  const ChangeLoginPinRequest._();

  factory ChangeLoginPinRequest.fromJson(Map<String, dynamic> json) =>
      _$ChangeLoginPinRequestFromJson(json);

  const factory ChangeLoginPinRequest({
    @JsonKey(name: "old_mpin") required int oldMpin,
    @JsonKey(name: "mpin") required int mpin,
  }) = _ChangeLoginPinRequest;
}
