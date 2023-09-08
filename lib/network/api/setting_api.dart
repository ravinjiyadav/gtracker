import 'package:g_tracker/network/models/request/auth/login_request.dart';
import 'package:g_tracker/network/models/request/mpin/change_login_pin_request.dart';
import 'package:g_tracker/network/models/request/otp/verify_otp_request.dart';
import 'package:g_tracker/network/models/response/forgotPassword/forgot_password_response.dart';
import 'package:g_tracker/network/models/response/mpin/confirm_mpin_response.dart';
import 'package:g_tracker/network/models/response/otp/verify_otp_response.dart';

abstract class SettingApi {
  Future<ForgotPasswordResponse> changeMobileNumber(LoginRequest request);

  Future<ConfirmMpinResponse> changeLoginPin(ChangeLoginPinRequest request);

  Future<VerifyOtpResponse> changedMobileVerifyOtp(VerifyOtpRequest request);
}
