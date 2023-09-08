class Endpoints {
  Endpoints._();

  // static const String baseUrl = "https://74dd-122-177-234-59.ngrok.io";
  static  String baseUrl = "https://e527-122-168-229-41.ngrok-free.app";
  static AuthEndPoints auth = const AuthEndPoints();
  static UserEndPoints user = const UserEndPoints();
  static PlaceEndPoints places = const PlaceEndPoints();
  static CirclesEndPoints circles = const CirclesEndPoints();
  static DeviceEndPoints device = const DeviceEndPoints();
  static MemberEndPoints member = const MemberEndPoints();
  static SettingEndpoints setting = const SettingEndpoints();
}

class AuthEndPoints {
  const AuthEndPoints();

  String get register => "/api/auth/register";

  String get resendOtp => "/api/auth/resend-otp";

  String get verifyOtp => "/api/auth/verify-otp";

  String get setMpin => "/api/auth/set-mpin";

  String get loginByMpin => "/api/auth/login-by-mpin";

  String get logout => "/api/auth/logout";
}

class CirclesEndPoints {
  const CirclesEndPoints();

  String get addCircle => "/api/circles";

  String get circles => "/api/circles";

  String deleteCircle(int circleId) => "/api/circles/$circleId";

  String updateCircle(int circleId) => "/api/circles/$circleId";

  String circleDetail(int circleId) => "/api/circles/$circleId";
}

class UserEndPoints {
  const UserEndPoints();

  String get userDetail => "/api/users";

  String get circles => "";

  String get addCurrentLocation => "/api/member_location";
}

class DeviceEndPoints {
  const DeviceEndPoints();

  String get addDevice => "/api/devices";

  String get devices => "/api/devices";

  String deleteDevice(int deviceId) => "/api/devices/$deviceId";
}

class MemberEndPoints {
  const MemberEndPoints();

  String get addMember => "/api/add_member/";
 // String get addMember => "/api/member_request/";

  String get members => "/api/members/";
  String get getMemberRequests => "/api/get_member_request/";
  String get memberRemoveFromCircle => "/api/member_remove_from_circle";

  String get memberLocationHistory => "/api/member_location_history/";
  String get acceptOrDeclineMemberRequest => "/api/accept_or_decline_member_request/";


  String circleMembers(int circleId) =>
      "/api/circle_members/$circleId";

  String membersAssignedLocation(int memberId) =>
      "/api/member_assigned_location/$memberId";

  String deleteMember(int memberId) => "/api/members/$memberId";

  String updateMember(int memberId) => "/api/members/$memberId";

  String memberDetail(int memberId) => "/api/members/$memberId";
}

class PlaceEndPoints {
  const PlaceEndPoints();

  String get addPlace => "/api/places";

  String get fetchPlaces => "/api/places";

  String updatePlace(int placeId) => "/api/places/$placeId";

  String placeDetail(int placeId) => "/api/places/$placeId";

  String deletePlace(int placeId) => "/api/places/$placeId";

  String get assignPlace => "/api/assigne/geofence";
}

class SettingEndpoints {
  const SettingEndpoints();

  String get changeMobileNumber => "/api/change_mobile_number";

  String get changeMpin => "/api/change_login_pin";

  String get changedMobileVerifyOtp => "/api/change_mobile_number_verify_otp";
}
