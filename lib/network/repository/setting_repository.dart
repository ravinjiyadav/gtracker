import 'package:dcbase/dcbase_network.dart';
import 'package:g_tracker/network/api/setting_api.dart';
import 'package:g_tracker/network/end_points.dart';
import 'package:g_tracker/network/models/request/auth/login_request.dart';
import 'package:g_tracker/network/models/request/mpin/change_login_pin_request.dart';
import 'package:g_tracker/network/models/request/otp/verify_otp_request.dart';
import 'package:g_tracker/network/models/response/forgotPassword/forgot_password_response.dart';
import 'package:g_tracker/network/models/response/mpin/confirm_mpin_response.dart';
import 'package:g_tracker/network/models/response/otp/verify_otp_response.dart';

class SettingRepository extends BaseRepository implements SettingApi {
  SettingRepository(HttpService httpService) : super(httpService);

  @override
  Future<ForgotPasswordResponse> changeMobileNumber(LoginRequest request) {
    return httpService
        .post(Endpoints.setting.changeMobileNumber, data: {
          "c_mobile":request.phoneNumber,
          "country_code":request.countryCode
    })
        .then((value) => ForgotPasswordResponse.fromJson(value));
  }

  @override
  Future<VerifyOtpResponse> changedMobileVerifyOtp(VerifyOtpRequest request) {
    return httpService
        .post(Endpoints.setting.changedMobileVerifyOtp, data: request.toJson())
        .then((value) => VerifyOtpResponse.fromJson(value));
  }

  @override
  Future<ConfirmMpinResponse> changeLoginPin(ChangeLoginPinRequest request) {
    return httpService
        .post(Endpoints.setting.changeMpin, data: request.toJson())
        .then((value) => ConfirmMpinResponse.fromJson(value));
  }
}
