import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_member_request.freezed.dart';

part 'add_member_request.g.dart';

@freezed
class AddMemberRequest with _$AddMemberRequest {
  const AddMemberRequest._();

  factory AddMemberRequest.fromJson(Map<String, dynamic> json) =>
      _$AddMemberRequestFromJson(json);

  const factory AddMemberRequest({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'circle_id') required int circleId,
   // @JsonKey(name: 'device_type') required String deviceType,
    @JsonKey(name: 'device_id')  int? deviceId,
    @JsonKey(name: 'mobile')  String? mobile,
    @JsonKey(name: 'country_code')  String? countryCode,
  }) = _AddMemberRequest;
}
