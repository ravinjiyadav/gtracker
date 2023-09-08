import 'package:g_tracker/network/models/auth_models.dart';
import 'package:g_tracker/network/models/response/basic_response.dart';

abstract class AuthApi {
  Future<RegisterResponse> register(LoginRequest request);

  Future<RegisterResponse> resentOtp(LoginRequest request);

  Future<VerifyOtpResponse> verifyOtp(VerifyOtpRequest request);

  Future<ConfirmMpinResponse> createMpin(ConfirmMpinRequest request);

  Future<MpinLoginResponse> mpinLogin(MpinLoginRequest request);

  Future<BasicResponse> logout(String token);

  Future<ForgotPasswordResponse> forgotPassword(LoginRequest request);
}
