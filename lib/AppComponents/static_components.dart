
import 'package:flutter/widgets.dart';
import 'package:g_tracker/network/models/auth_models.dart';

class UserCredentials {
  static var token;
  static var userId;
  static var locationOfMember;
  static var enteredMpin;
  static var circleList;
  static String? polygonCoordinates;
  static TextEditingController phoneController = TextEditingController();
  static LoginRequest loginRequest =
      const LoginRequest(countryCode: "", phoneNumber: "");
  static var currentLatitude;
  static var currentLongitude;
  static var deviceToken;
  static var deviceType;
}
