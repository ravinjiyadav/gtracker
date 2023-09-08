// ignore_for_file: avoid_print

import 'package:dcbase/dcbase.dart';
import 'package:g_tracker/GlobalModel/circle_model.dart';
import 'package:g_tracker/modules/HomePage/model/member_model_home.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreenVm extends BaseViewModel {
  var index = 0;

  //variable
  double? lat;
  double? lng;

  //Circle API
  CircleList cirlceList = CircleList();
  var isCircleLoaded = false;
  String circleValue = "Family";

  var isMapLoaded = false;

  //Member API
  MemberList memberList = MemberList();
  var isVisible = false;
  var isMemberLoaded = false;

  GoogleMapController? googleMapController;

  final Marker locationMarker = const Marker(
    markerId: MarkerId("_locationMarker"),
    infoWindow: InfoWindow(title: "My New Location"),
    icon: BitmapDescriptor.defaultMarker,
    position: LatLng(22.7533, 75.8937),
  );

  // My HomeLocation Marker
  final Marker homeLocationMarker = Marker(
    markerId: const MarkerId("_locationMarker"),
    infoWindow: const InfoWindow(title: "My Home"),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
    position: const LatLng(22.698029076221427, 75.86367015024919),
  );

  //Polygon

  // final intialCameraPosition = const CameraPosition(
  //   target: LatLng(22.7196, 75.8577),
  //   zoom: 11.5,
  // );
  //----------------------—----------------------—----------------------—----------------------—----------------------—----------------------—
  // Get Current Location

  // Position? currentPosition;
  // String? currentAddress;
  // String? city;
  // Placemark placemarkss = Placemark();
  double ? latitude;
  double ? longitude;
}
