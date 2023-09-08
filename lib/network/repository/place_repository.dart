import 'package:dcbase/dcbase.dart';
import 'package:g_tracker/network/api/place_api.dart';
import 'package:g_tracker/network/end_points.dart';
import 'package:g_tracker/network/models/request/place/add_place_request.dart';
import 'package:g_tracker/network/models/request/place/assign_place/assign_place_request.dart';
import 'package:g_tracker/network/models/response/basic_response.dart';
import 'package:g_tracker/network/models/response/place/add_place_response.dart';
import 'package:g_tracker/network/models/response/place/assign_place/assign_place_response.dart';
import 'package:g_tracker/network/models/response/place/place.dart';

class PlaceRepository extends BaseRepository implements PlaceApi {
  PlaceRepository(HttpService httpService) : super(httpService);

  @override
  Future<AddPlaceResponse> addPlace(AddPlaceRequest request) {
    return httpService
        .post(Endpoints.places.addPlace, data: request.toJson())
        .then((value) => AddPlaceResponse.fromJson(value));
  }

  @override
  Future<BasicResponse> deletePlace(int placeId) {
    return httpService
        .delete(Endpoints.places.deletePlace(placeId))
        .then((value) => BasicResponse.fromJson(value));
  }

  @override
  Future<List<Place>> fetchPlaces() {
    return httpService.get(Endpoints.places.fetchPlaces).then((value) =>
        (value['location'] as List).map((e) => Place.fromJson(e)).toList());
  }

  @override
  Future<AddPlaceResponse> placeDetail(int placeId) {
    return httpService
        .get(Endpoints.places.placeDetail(placeId))
        .then((value) => AddPlaceResponse.fromJson(value));
  }

  @override
  Future<AddPlaceResponse> updatePlace(
      {required AddPlaceRequest request, required int placeId}) {
    return httpService
        .put(Endpoints.places.updatePlace(placeId), data: request.toJson())
        .then((value) => AddPlaceResponse.fromJson(value));
  }

  @override
  Future<BasicResponse> assignPlaces(
      {required AssignPlaceRequest request}) {
    return httpService
        .post(Endpoints.places.assignPlace, data: request.toJson())
        .then((value) => BasicResponse.fromJson(value));
  }
}
