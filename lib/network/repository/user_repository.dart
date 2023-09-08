import 'package:dcbase/dcbase_network.dart';
import 'package:g_tracker/network/api/user_api.dart';
import 'package:g_tracker/network/end_points.dart';
import 'package:g_tracker/network/models/request/user/sendCurrentLocation/send_current_location_request.dart';
import 'package:g_tracker/network/models/request/user/update_user_detail_request.dart';
import 'package:g_tracker/network/models/response/basic_response.dart';
import 'package:g_tracker/network/models/response/user/user_response.dart';
import 'package:g_tracker/network/models/response/user/user_send_location/user_send_location_response.dart';

class UserRepository extends BaseRepository implements UserApi {
  final HttpService httpService;

  UserRepository(this.httpService) : super(httpService);

  @override
  Future<UserResponse> fetchUserDetail() {
    return httpService
        .get(Endpoints.user.userDetail)
        .then((value) => UserResponse.fromJson(value));
  }

  @override
  Future<UserResponse> updateUser(UpdateUserDetailRequest request) {
    return httpService
        .post(Endpoints.user.userDetail, data: request.toJson())
        .then((value) => UserResponse.fromJson(value));
  }

  /* @override
  Future<BasicResponse> sendCurrentLocation(
      {required SendCurrentLocationRequest request}) {
    return httpService
        .post(Endpoints.user.addCurrentLocation, data: request.toJson())
        .then((value) => BasicResponse.fromJson(value));
  }*/

  @override
  Future<List<UserSendLocations>> sendCurrentLocation(
      {required SendCurrentLocationRequest request}) {
    return httpService
        .post(Endpoints.user.addCurrentLocation, data: request.toJson())
        //     .then((value) =>
        //     BasicResponse.fromJson(value)
        //
        //
        // );

        .then((value) => (value['locations'] as List)
            .map((e) => UserSendLocations.fromJson(e))
            .toList());
  }
}
