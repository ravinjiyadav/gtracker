import 'package:g_tracker/network/models/response/basic_response.dart';
import 'package:g_tracker/network/models/response/circles/circle.dart';
import 'package:g_tracker/network/models/response/circles/create_circle_response.dart';

abstract class CircleApi {
  Future<List<Circle>> circles();

  Future<BasicResponse> deleteCircle({required int circleId});

  Future<CreateCircleResponse> circle({required int circleId});

  Future<CreateCircleResponse> createCircle({required String name,required bool showMyLocationToOthers,
    required bool showMembersLocationToOthers});

  Future<CreateCircleResponse> updateCircle(
      {required int circleId, required String name,required bool showMyLocationToOthers,required bool showMembersLocationToOthers});
}
