import 'package:g_tracker/network/models/request/auth/login_request.dart';

class LocalCache {
  const LocalCache._();

  static LoginRequest loginRequest =
      const LoginRequest(countryCode: "", phoneNumber: "");
  static String enteredName = "";
}
