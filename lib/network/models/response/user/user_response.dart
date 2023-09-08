import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:g_tracker/network/models/response/auth/register_response.dart';

part 'user_response.g.dart';

part 'user_response.freezed.dart';

@freezed
class UserResponse with _$UserResponse {
  const UserResponse._();

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);

  const factory UserResponse({
    @JsonKey(name: "status") @Default(false) bool status,
    @JsonKey(name: "code") @Default(-1) int code,
    @JsonKey(name: "message") @Default("") String message,
    @JsonKey(name: "data") required GUser data,
  }) = _UserResponse;
}
