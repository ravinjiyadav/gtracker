import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_mpin_request.freezed.dart';

part 'set_mpin_request.g.dart';

@freezed
class SetMpinRequest with _$SetMpinRequest {
  const SetMpinRequest._();

  factory SetMpinRequest.fromJson(Map<String, dynamic> json) =>
      _$SetMpinRequestFromJson(json);

  const factory SetMpinRequest({
    @JsonKey(name: "country_code") required String countryCode,
    @JsonKey(name: "mobile") required String phoneNumber,
    @JsonKey(name: "mpin") required int mpin,
}) = _SetMpinRequest;

}
