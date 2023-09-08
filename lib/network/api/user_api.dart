import 'package:g_tracker/network/models/request/user/sendCurrentLocation/send_current_location_request.dart';
import 'package:g_tracker/network/models/request/user/update_user_detail_request.dart';
import 'package:g_tracker/network/models/response/basic_response.dart';
import 'package:g_tracker/network/models/response/user/user_response.dart';
import 'package:g_tracker/network/models/response/user/user_send_location/user_send_location_response.dart';

abstract class UserApi {
  Future<UserResponse> fetchUserDetail();

  Future<UserResponse> updateUser(UpdateUserDetailRequest request);

  Future<List<UserSendLocations>> sendCurrentLocation({required SendCurrentLocationRequest request});

}
