import 'package:dcbase/dcbase_network.dart';
import 'package:g_tracker/network/api/auth_api.dart';
import 'package:g_tracker/network/end_points.dart';
import 'package:g_tracker/network/models/auth_models.dart';
import 'package:g_tracker/network/models/response/basic_response.dart';

class AuthRepository extends BaseRepository implements AuthApi {
  AuthRepository(HttpService httpService) : super(httpService);

  @override
  Future<RegisterResponse> register(LoginRequest request) {
    return httpService
        .post(Endpoints.auth.register, data: request.toJson())
        .then((value) => RegisterResponse.fromJson(value));
  }

  @override
  Future<RegisterResponse> resentOtp(LoginRequest request) {
    return httpService
        .post(Endpoints.auth.resendOtp, data: request.toJson())
        .then((value) => RegisterResponse.fromJson(value));
  }

  @override
  Future<ConfirmMpinResponse> createMpin(ConfirmMpinRequest request) {
    return httpService
        .post(Endpoints.auth.setMpin, data: request.toJson())
        .then((value) => ConfirmMpinResponse.fromJson(value));
  }

  @override
  Future<VerifyOtpResponse> verifyOtp(VerifyOtpRequest request) {
    return httpService
        .post(Endpoints.auth.verifyOtp, data: request.toJson())
        .then((value) => VerifyOtpResponse.fromJson(value));
  }

  @override
  Future<MpinLoginResponse> mpinLogin(MpinLoginRequest request) {
    return httpService
        .post(Endpoints.auth.loginByMpin, data: request.toJson())
        .then((value) => MpinLoginResponse.fromJson(value));
  }

  @override
  Future<BasicResponse> logout(String token) {
    return httpService
        .post(Endpoints.auth.logout)
        .then((value) => BasicResponse.fromJson(value));
  }

  @override
  Future<ForgotPasswordResponse> forgotPassword(LoginRequest request) {
    return httpService
        .post(Endpoints.auth.register,
            data: request.copyWith(forgotPassword: true).toJson())
        .then((value) => ForgotPasswordResponse.fromJson(value));
  }
}
