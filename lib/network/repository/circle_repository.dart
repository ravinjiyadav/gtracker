import 'package:dcbase/dcbase_network.dart';
import 'package:g_tracker/network/api/circle_api.dart';
import 'package:g_tracker/network/end_points.dart';
import 'package:g_tracker/network/models/response/basic_response.dart';
import 'package:g_tracker/network/models/response/circles/circle.dart';
import 'package:g_tracker/network/models/response/circles/create_circle_response.dart';

class CircleRepository extends BaseRepository implements CircleApi {
  CircleRepository({required HttpService httpService}) : super(httpService);

  @override
  Future<CreateCircleResponse> circle({required int circleId}) {
    return httpService
        .get(Endpoints.circles.circleDetail(circleId))
        .then((value) => CreateCircleResponse.fromJson(value));
  }

  @override
  Future<List<Circle>> circles() {
    return httpService.get(Endpoints.circles.circles).then((value) =>
        (value['circle'] as List).map((e) => Circle.fromJson(e)).toList());
  }

  @override
  Future<CreateCircleResponse> createCircle({required String name,
  required bool showMyLocationToOthers,
  required bool showMembersLocationToOthers}) {
    return httpService.post(Endpoints.circles.addCircle, data: {
      "name": name,
      "show_my_location_to_others": showMyLocationToOthers,
      "show_members_location_to_others": showMembersLocationToOthers,
    }).then((value) => CreateCircleResponse.fromJson(value));
  }

  @override
  Future<BasicResponse> deleteCircle({required int circleId}) {
    return httpService
        .delete(Endpoints.circles.deleteCircle(circleId))
        .then((value) => BasicResponse.fromJson(value));
  }

  @override
  Future<CreateCircleResponse> updateCircle({required int circleId, required String name, required bool showMyLocationToOthers, required bool showMembersLocationToOthers}) {
      return httpService.put(Endpoints.circles.updateCircle(circleId), data: {
        "name": name,
        "show_my_location_to_others": showMyLocationToOthers,
        "show_members_location_to_others": showMembersLocationToOthers
      }).then((value) => CreateCircleResponse.fromJson(value));
    }


  // @override
  // Future<CreateCircleResponse> updateCircle(
  //     {required int circleId, required String name,required bool showMyLocationToOthers,required bool showMembersLocationToOthers}) {
  //   return httpService.put(Endpoints.circles.updateCircle(circleId), data: {
  //     "name": name,
  //     "show_my_location_to_others": showMyLocationToOthers,
  //     "show_members_location_to_others": showMembersLocationToOthers
  //   }).then((value) => CreateCircleResponse.fromJson(value));
  // }
}
