import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_detail_request.freezed.dart';

part 'update_user_detail_request.g.dart';

@freezed
class UpdateUserDetailRequest with _$UpdateUserDetailRequest {
  const UpdateUserDetailRequest._();

  factory UpdateUserDetailRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserDetailRequestFromJson(json);

  const factory UpdateUserDetailRequest({

    @JsonKey(name: "name") required String name,
  }) = _UpdateUserDetailRequest;
}
