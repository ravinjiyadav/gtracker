import 'package:g_tracker/network/models/request/place/add_place_request.dart';
import 'package:g_tracker/network/models/request/place/assign_place/assign_place_request.dart';
import 'package:g_tracker/network/models/response/basic_response.dart';
import 'package:g_tracker/network/models/response/place/add_place_response.dart';
import 'package:g_tracker/network/models/response/place/assign_place/assign_place_response.dart';
import 'package:g_tracker/network/models/response/place/place.dart';

abstract class PlaceApi {
  Future<AddPlaceResponse> addPlace(AddPlaceRequest request);

  Future<AddPlaceResponse> updatePlace(
      {required AddPlaceRequest request, required int placeId});

  Future<AddPlaceResponse> placeDetail(int placeId);

  Future<BasicResponse> deletePlace(int placeId);

  Future<List<Place>> fetchPlaces();


  Future<BasicResponse> assignPlaces({required AssignPlaceRequest request});
}
