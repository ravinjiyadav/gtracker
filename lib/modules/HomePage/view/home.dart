import 'dart:math';
import 'package:dcbase/dcbase.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:g_tracker/AppComponents/static_components.dart';
import 'package:g_tracker/GlobalService/circle_service.dart';
import 'package:g_tracker/widgets/widgets.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../AppComponents/routes_file.dart';
import '../../../GlobalService/user_current_location_service.dart';
import '../controller/home_screen_vm.dart';
import '../service/remote_service.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  // static const routeName = '/home';

  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static var client = http.Client();
  Position? currentPosition;
  String? currentAddress;
  String? city;
  Placemark placeMarkers = Placemark();
  TimeOfDay timeOfDay = TimeOfDay.now();

  Set<Marker> markers = {};
  Map<PolylineId, Polyline> polyLines = {};

  // Calculate the distance between two coordinates
  double calculateDistance(var lat1, var lon1, var lat2, var lon2) {
    var p = 0.017453292519943295;
    var a = 0.5 -
        cos((lat2 - lat1) * p) / 2 +
        cos(lat1 * p) * cos(lat2 * p) * (1 - cos((lon2 - lon1) * p)) / 2;
    return 12742 * asin(sqrt(a));
  }

  // Calculate the distance between origin and destination
  void getDistanceMatrix(HomeScreenVm modal) async {
    var url = Uri.parse(
        "https://maps.googleapis.com/maps/api/distancematrix/json?destinations=${modal.lat.toString()},${modal.lng.toString()}&origins=${modal.latitude.toString()},${modal.longitude.toString()}&key=AIzaSyDSlPgcng4CfyPtIVx5dMyg2Hr3ElZ1jgM");
    try {
      var response = await client.get(url);
      if (kDebugMode) {
        print(response.body);
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  // POST API to send the User's Current Location to the Server
  Future sendCurrentLocation(HomeScreenVm modal) async {
    var currentLocation =
        await UserCurrentLocationService.getUsersCurrentLocation(
      UserCredentials.userId.toString(),
      currentAddress.toString(),
      modal.latitude.toString(),
      modal.longitude.toString(),
      DateTime.now().toString(),
      timeOfDay.minute.toString(),
      'PM'.toString(),
      UserCredentials.deviceType.toString().toLowerCase(),
    );
    return currentLocation;
  }

  //Get User Current Location
  Future<Position> determinePosition(HomeScreenVm modal) async {
    bool serviceEnabled;
    LocationPermission locationPermission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      Fluttertoast.showToast(msg: "Please Keep your location on");
    }
    locationPermission = await Geolocator.checkPermission();
    if (locationPermission == LocationPermission.denied) {
      locationPermission = await Geolocator.requestPermission();
      if (locationPermission == LocationPermission.denied) {
        Fluttertoast.showToast(msg: "Location Permission is denied.");
      }
    }
    if (locationPermission == LocationPermission.deniedForever) {
      Fluttertoast.showToast(msg: "Location Permission is denied forever");
    }
    if (kDebugMode) {
      print("Current Position $currentPosition");
    }
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    try {
      List<Placemark> placeMark =
          await placemarkFromCoordinates(position.latitude, position.longitude);
      Placemark place = placeMark[0];
      currentPosition = position;
      currentAddress =
          "${place.country},${place.locality},${place.postalCode} ";
      city = place.locality;
      modal.latitude = currentPosition?.latitude;
      modal.longitude = currentPosition?.longitude;
      if (currentPosition != null) {
        setState(() {
          modal.isMapLoaded = true;
        });
      }
      if (kDebugMode) {
        print(currentAddress);
      }
      if (kDebugMode) {
        print(position.latitude);
      }
      if (kDebugMode) {
        print(position.longitude);
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return position;
  }

  //Using Remote Services
  Future fetchMembers(HomeScreenVm modal) async {
    var members = await RemoteServices.fetchMembers(context);
    setState(() {
      modal.isMemberLoaded = true;
    });
    if (kDebugMode) {
      print("member is $members");
    }
    if (members != null) {
      modal.memberList = members;
    } else {
      if (kDebugMode) {
        print("device is null");
      }
      setState(() {
        modal.isMemberLoaded = false;
      });
    }
  }

  // Using Circle Services
  Future fetchCircle(HomeScreenVm modal) async {
    modal.isCircleLoaded = false;
    var circle = await CircleService.getCircleList(
        context, UserCredentials.userId.toString());
    setState(() {
      modal.isCircleLoaded = true;
    });

    if (kDebugMode) {
      print("Circle is  $circle");
    }
    if (circle != null) {
      modal.cirlceList = circle;
      if (kDebugMode) {
        print(modal.cirlceList.runtimeType);
      }
    } else {
      if (kDebugMode) {
        print("Circle");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    markers.add(const Marker(
      markerId: MarkerId("Marker ID"),
      position: LatLng(22.698029076221427, 75.86367015024919),
      infoWindow: InfoWindow(title: "My location"),
      icon: BitmapDescriptor.defaultMarker,
    ));
    return BaseWidget(
        model: HomeScreenVm(),
        builder: (context, modal, child) {
          modal.lat = modal.latitude ?? 0;
          modal.lng = modal.longitude ?? 0;
          getDistanceMatrix(modal);
          markers.add(Marker(
            markerId: const MarkerId("Marker ID"),
            position: LatLng(modal.lat!, modal.lng!),
            infoWindow: const InfoWindow(title: "My location"),
            icon: BitmapDescriptor.defaultMarker,
          ));
          sendCurrentLocation(modal);
          fetchCircle(modal);
          fetchMembers(modal);
          determinePosition(modal);
          return Scaffold(
            drawer: const CustomDrawer(),
            body: Stack(
              children: [
                modal.isMapLoaded
                    ? GoogleMap(
                        markers: markers,
                        mapType: MapType.normal,
                        zoomControlsEnabled: false,
                        mapToolbarEnabled: false,
                        myLocationButtonEnabled: false,
                        initialCameraPosition: CameraPosition(
                            target: LatLng(
                                modal.latitude ?? 0, modal.longitude ?? 0),
                            zoom: 16.5),
                        onMapCreated: (controller) =>
                            modal.googleMapController = controller,
                      )
                    : const Center(
                        child: CircularProgressIndicator(),
                      ),
                Positioned(
                  bottom: 40,
                  left: 30,
                  child: Column(
                    children: [
                      Container(
                        height: 81.h,
                        width: 315.w,
                        alignment: const Alignment(2, 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.r),
                        ),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                   },
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 10.0.w,
                                  right: 5.w,
                                  top: 5.h,
                                  bottom: 5.h,
                                ),
                                child: Container(
                                  height: 45.h,
                                  width: 45.w,
                                  padding: EdgeInsets.all(6.r),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                  child: Image.asset(
                                    "assets/images/addUser.png",
                                  ),
                                ),
                              ),
                            ),
                            modal.isMemberLoaded
                                ? Expanded(
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: modal.memberList.data?.members
                                              ?.length ??
                                          0,
                                      itemBuilder: ((context, index) =>
                                          GestureDetector(
                                            onTap: () {
                                              modal.isVisible =
                                                  !modal.isVisible;
                                            },
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                vertical: 20.0.h,
                                                horizontal: 5.w,
                                              ),
                                              child: Container(
                                                width: 42.w,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.r),
                                                ),
                                                child: modal
                                                            .memberList
                                                            .data!
                                                            .members![index]
                                                            .photo ==
                                                        null
                                                    ? Image.asset(
                                                        "assets/images/user.png",
                                                        height: 30.h,
                                                        width: 30.w,
                                                      )
                                                    : ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.r),
                                                        child: Image.network(
                                                          modal
                                                              .memberList
                                                              .data!
                                                              .members![index]
                                                              .photo
                                                              .toString(),
                                                          height: 30.h,
                                                          width: 30.w,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                              ),
                                            ),
                                          )),
                                    ),
                                  )
                                : const Center(
                                    child: CircularProgressIndicator(
                                      strokeWidth: 3,
                                    ),
                                  ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),

                    ],
                  ),
                ),
                Positioned(
                  top: 40.h,
                  left: 20.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Builder(
                        builder: ((context) => InkWell(
                              onTap: () => Scaffold.of(context).openDrawer(),
                              child: Container(
                                height: 40.h,
                                width: 40.w,
                                decoration: BoxDecoration(
                                  // color: Colors.redAccent,
                                  borderRadius: BorderRadius.circular(20.r),
                                ),
                                child: Image.asset(
                                  "assets/images/menubar.png",
                                ),
                              ),
                            )),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                        height: 45.h,
                        width: 230.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: Padding(
                              padding: EdgeInsets.all(12.0.r),
                              child: modal.isCircleLoaded
                                  ? DropdownButton(
                                      hint: const Text("Select Circle"),
                                      borderRadius: BorderRadius.circular(18.r),
                                      value: modal.circleValue,
                                      items: modal.cirlceList.data?.circle
                                          ?.map(
                                            (e) => DropdownMenuItem(
                                              value: e.name,
                                              child: Text(
                                                e.name.toString(),
                                              ),
                                            ),
                                          )
                                          .toList(),
                                      onChanged: (newValue) {
                                        modal.circleValue = newValue.toString();

                                        if (kDebugMode) {
                                          print(modal.circleValue.runtimeType);
                                          print("new value is $newValue");
                                        }
                                      },
                                    )
                                  : const Center(
                                      child: CircularProgressIndicator(),
                                    )),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: Image.asset(
                          "assets/images/notificationbar2.png",
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 90.h,
                  right: 0.1.w,
                  child: GestureDetector(
                      onTap: () {
                          },
                      child: const LocationIcon()),
                ),
              ],
            ),
          );
        });
  }

  // Check Users Current Location & Send it the server If User changes it position
  void sendUsersCurrentLocation(HomeScreenVm modal) {
    if (modal.latitude == modal.lat && modal.longitude == modal.lng) {
      if (kDebugMode) {
        print("User did not switched its  positions");
      }
    } else {
      calculateDistance(
          modal.latitude, modal.longitude, modal.lat, modal.longitude);

      sendCurrentLocation(modal);
      if (kDebugMode) {
        print("User Switched its positions");
      }
    }
  }
}
