import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dcbase/dcbase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/AppComponents/images.dart';
import 'package:g_tracker/AppComponents/routes_file.dart';
import 'package:g_tracker/AppComponents/text_styles.dart';
import 'package:g_tracker/localStore/db_helper.dart';
import 'package:g_tracker/network/models/response/circles/circle.dart' as c;
import 'package:g_tracker/AppComponents/text_size.dart';
import 'package:g_tracker/network/models/response/user/user_send_location/user_send_location_response.dart';
import 'package:g_tracker/services/notification.dart';
import 'package:g_tracker/ui/dashboard/dashboard_vm.dart';
import 'package:g_tracker/ui/members/memberRequestList/member_request_list_screen.dart';
import 'package:g_tracker/widgets/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uuid/uuid.dart';
import '../../../AppComponents/app_colors.dart' as ac;
import 'package:g_tracker/network/network_provider.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:g_tracker/network/models/request/user/sendCurrentLocation/send_current_location_request.dart';
import 'package:fluttertoast/fluttertoast.dart';

//import 'package:flutter_background_geolocation/flutter_background_geolocation.dart' as bg;

import 'package:background_location/background_location.dart';

class DashBoardScreen extends ConsumerStatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends ConsumerState<DashBoardScreen> {
  NotificationService notificationService = NotificationService();

  Timer? timer;
  Timer? memberLocationsTimer;

  late final DashBoardScreenVm model;

  late final DatabaseHelper databaseHelper;

  var uuid = const Uuid();

 late int userId;

  initLocalDB() async {
    databaseHelper = await DatabaseHelper.instance;
  }

  @override
  initState() {
    super.initState();

    final userBox = ref.read(userBoxProvider);
    userId = userBox.user()?.id ?? 0;
    print("User id $userId");
    print(userBox.user());


    initLocalDB();

    setBackgroundLocation();

    //  setUpBackgroundGeoLocation();
  }

  setBackgroundLocation() async {
   // BackgroundLocation.setAndroidConfiguration(10000);
    //  BackgroundLocation.stopLocationService();
    // BackgroundLocation.startLocationService(); // location not fetch when remove it

     BackgroundLocation.startLocationService(
        distanceFilter: 1000);  // only this set then not work timer
    //  BackgroundLocation.startLocationService(forceAndroidLocationManager: true);
    BackgroundLocation.getLocationUpdates((location) {
      print("Location from bg - ${location.latitude} ${location.longitude}");
      // notificationService.sendNotification(
      //     "Location changed", "${location.latitude} ${location.longitude}");
       sendUserLocation(location.latitude ?? 0.0, location.longitude);
    });
  }

  // setUpBackgroundGeoLocation() async {
  //
  //
  //   bg.BackgroundGeolocation.ready(bg.Config(
  //       desiredAccuracy: bg.Config.DESIRED_ACCURACY_HIGH,
  //      // distanceFilter: 0.01,
  //       distanceFilter: 5.0,
  //       stopOnTerminate: false,
  //       startOnBoot: true,
  //       debug: true,
  //       logLevel: bg.Config.LOG_LEVEL_VERBOSE
  //   )).then((bg.State state) {
  //     if (!state.enabled) {
  //       ////
  //       // 3.  Start the plugin.
  //       //
  //       bg.BackgroundGeolocation.start();
  //
  //     }
  //   });
  //
  //
  // //  await bg.BackgroundGeolocation.start();
  //
  //
  //   bg.BackgroundGeolocation.onLocation((bg.Location location) {
  //
  //
  //     Fluttertoast.showToast(msg: "Location changed");
  //     print('[locationn] - $location');
  //
  //
  //
  //     sendUserLocation(location.coords.latitude,location.coords.longitude);
  //
  //     notificationService.sendNotification("Location changed", "${location.coords.latitude},${location.coords.longitude}");
  //   });
  //
  //   // Fired whenever the plugin changes motion-state (stationary->moving and vice-versa)
  //   bg.BackgroundGeolocation.onMotionChange((bg.Location location) {
  //     print('[locationn motionchange] - $location');
  //
  //     Fluttertoast.showToast(msg: "Motion changed");
  //   //  notificationService.sendNotification("Motion changed", "body");
  //   });
  //
  //   // Fired whenever the state of location-services changes.  Always fired at boot
  //   bg.BackgroundGeolocation.onProviderChange((bg.ProviderChangeEvent event) {
  //     print('[ locationn providerchange] - $event');
  //   });
  //
  //
  // }

  // void startWorkManagerBackgroundTask() async {
  //   await Workmanager().registerPeriodicTask(
  //     "1",
  //     "locationTask",
  //     frequency: Duration(seconds: 10),
  //   );
  //
  //   await Workmanager().registerPeriodicTask("2", "locationTask2",
  //       initialDelay: Duration(minutes: 1));
  //
  //   await Workmanager().registerPeriodicTask("3", "locationTask3",
  //       initialDelay: Duration(minutes: 2));
  //
  //   await Workmanager().registerPeriodicTask("4", "locationTask4",
  //       initialDelay: Duration(minutes: 3));
  //
  //   await Workmanager().registerPeriodicTask("4", "locationTask4",
  //       initialDelay: Duration(minutes: 4));
  //
  //   await Workmanager().registerPeriodicTask("2", "locationTask2",
  //       initialDelay: Duration(minutes: 5));
  //
  //   await Workmanager().registerPeriodicTask("3", "locationTask3",
  //       initialDelay: Duration(minutes: 6));
  //
  //   await Workmanager().registerPeriodicTask("4", "locationTask4",
  //       initialDelay: Duration(minutes: 7));
  //
  //   await Workmanager().registerPeriodicTask("4", "locationTask4",
  //       initialDelay: Duration(minutes: 8));
  //
  //   await Workmanager().registerPeriodicTask("4", "locationTask4",
  //       initialDelay: Duration(minutes: 9));
  //
  //   await Workmanager().registerPeriodicTask("4", "locationTask4",
  //       initialDelay: Duration(minutes: 10));
  //
  //   await Workmanager().registerPeriodicTask("4", "locationTask4",
  //       initialDelay: Duration(minutes: 11));
  //
  //   await Workmanager().registerPeriodicTask("4", "locationTask4",
  //       initialDelay: Duration(minutes: 12));
  //   await Workmanager().registerPeriodicTask("4", "locationTask4",
  //       initialDelay: Duration(minutes: 13));
  //   await Workmanager().registerPeriodicTask("4", "locationTask4",
  //       initialDelay: Duration(minutes: 14));
  // }

  double? latitude;
  double? longitude;
  GoogleMapController? googleMapController;


  fetchCircle() async {
    await model.fetchCircles(onSuccess: (message) {
      getMembersLocationTimer(model);
      fetchMemberLocation();
    });
  }

  fetchMemberLocation() async {


    if(model.circleValue != null){
    await model.fetchMembersFromCircle(onSuccess: (message) {
      setState(() {});
    }, onMarkerTap: (index) {
      // showAddressDialog(context);

      getAddress(index);
    });}
    else {
      model.isMemberLocationLoading = false;
      model.membersList.clear();

      setState(() {});
    }
  }

  //Get User Current Location
  Future<Position> getCurrentLocation() async {
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
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    try {
      logD("Location is ");

      latitude = position.latitude;
      longitude = position.longitude;
      //get address name
      List<Placemark> placemarks =
          await placemarkFromCoordinates(position.latitude, position.longitude);
      Placemark place = placemarks[0];
      var address = "${place.country},${place.locality},${place.postalCode} ";

      logD(position.latitude);
      logD(position.longitude);
    } catch (e) {
      logD(e);
    }
    return position;
  }

  // setCurrentLocationSendTimer(DashBoardScreenVm model) {
  //   if (timer == null || timer!.isActive == false) {
  //     timer = Timer.periodic(const Duration(seconds: 60), (timer) {
  //       logD("Location sent");
  //       getCurrentLocation().then((value) async {
  //        // sendUserLocation(value);
  //         sendUserLocation(value.latitude,value.longitude);
  //       });
  //     });
  //   } else {
  //     logD("Already add");
  //   }
  // }

  getMembersLocationTimer(DashBoardScreenVm model) {
    if (memberLocationsTimer == null ||
        memberLocationsTimer!.isActive == false) {
      memberLocationsTimer =
          Timer.periodic(const Duration(minutes: 2), (timer) async {
        fetchMemberLocation();
      });
    } else {
      logD("Already get");
    }
  }

  // sendUserLocation(Position value) async {

  //290,384 pr add krna h
  sendUserLocation(double lat, lng) async {
    //store user location in local db
    databaseHelper.insert(UserLocation(
      // latitude: value.latitude,
      // longitude: value.longitude,
      latitude: lat,
      longitude: lng,
      uuid: uuid.v4(),
    ));

    // get user location from local db and send it on Api
    List<UserLocation> userLocation = await databaseHelper.queryAllRows();

    logD("List length is ${userLocation.length}");

//           List<Locations> locationList = [
//             Locations(lat: value.latitude, lng: value.longitude)
// ];

    List<Locations> locationList = [];

    for (var a = 0; a < userLocation.length; a++) {
      locationList.add(Locations(
        lat: userLocation[a].latitude ?? 0.0,
        lng: userLocation[a].longitude ?? 0.0,
        uuid: userLocation[a].uuid ?? "0",
      ));
    }

    model.sendLocation(
        request: SendCurrentLocationRequest(locations: locationList),
        onSuccess: (List<UserSendLocations> userSendLocations) async {
          logD("Response after success");
          logD(userSendLocations);

          for (var a = 0; a < userSendLocations.length; a++) {
            //Remove location from db from id after get success response
            await databaseHelper.removeLocation(userSendLocations[a].id ?? "");
          }

          logD("list length data delete");
        },
        onFailure: (message) {
          _showMessage(message);
        });
  }

  @override
  Widget build(BuildContext context) {
    print('build call');

    return BaseWidget<DashBoardScreenVm>(
      model: DashBoardScreenVm(
          ref.watch(circleRepositoryProvider),
          ref.watch(memberRepositoryProvider),
          ref.watch(userRepositoryProvider)),
      onModelReady: (model) {
        this.model = model;

        logD('build call on model ready');

        fetchCircle();
        //    setCurrentLocationSendTimer(model);

        getCurrentLocation().then((value) {
          setState(() {});

          //  startWorkManagerBackgroundTask();

          //  sendUserLocation(value);
          sendUserLocation(value.latitude, value.longitude);
        });
      },
      builder: (context, model, child) {
        return Scaffold(
            drawer: const CustomDrawer(),
            body: Stack(
              children: [
                //GoogleMap
                GoogleMap(
                  key: ValueKey(LatLng(latitude ?? 0.0, longitude ?? 0.0)),
                  markers: model.markers,
                  zoomControlsEnabled: false,
                  myLocationButtonEnabled: false,
                  initialCameraPosition: CameraPosition(
                      tilt: 50,
                      target: LatLng(latitude ?? 0.0, longitude ?? 0.0),
                      zoom: 14),
                  onMapCreated: (GoogleMapController controller) {
                    //   _controller.complete(controller);
                  },
                ),

                // circle
                SafeArea(
                  child: Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(left: 20.w, right: 20.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Builder(
                          builder: ((context) => InkWell(
                                onTap: () => Scaffold.of(context).openDrawer(),
                                child: Container(
                                  height: 40.h,
                                  width: 40.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.r),
                                  ),
                                  child: Image.asset(
                                    "assets/images/menubar.png",
                                  ),
                                ),
                              )),
                        ),
                        Expanded(
                          child: Container(
                            height: 45.h,
                            margin: EdgeInsets.symmetric(horizontal: 10.w),
                            child: ScreenStateAwareView(
                              screenState: model.screenStateNotifier,
                              progress: const Center(
                                child:
                                    CircularProgressIndicator(strokeWidth: 2),
                              ),
                              empty: Container(
                                height: 45.h,
                                //width: 230.w,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15.r),
                                ),
                                child: const Center(child: Text("No circle")),
                              ),
                              child: ValueListenableBuilder<List<c.Circle>>(
                                valueListenable: model.circlesNotifier,
                                builder: (context, circle, child) {
                                  return Container(
                                    height: 45.h,
                                    //  width: 230.w,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10.w),

                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15.r),
                                    ),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton(
                                        hint:
                                            const Text('Please Select Circle'),
                                        value: model.circleValue,
                                        onChanged: (newValue) async {
                                          model.circleValue =
                                              newValue as c.Circle;

                                          setState(() {
                                            model.circleValue =
                                                newValue as c.Circle;
                                          });

                                          //  model.filterMembers(model.circleValue!.id);

                                          //    model.markers.clear();
                                          logD("Marker clear");

                                          model.membersList.clear();

                                          fetchMemberLocation();

                                        },
                                        items: circle.map((circle) {
                                          return DropdownMenuItem(
                                            value: circle,
                                            child: Row(
                                              children: [



                                                Text(circle.name,
                                                  style: TextStyle(color: ac.AppColors.headingColor,
                                                      fontSize: TextSizes.text16
                                                  ),),

                                              //  userId



                                                Text(
                                                  (circle.isOwner == true) ? "(Owner)" :"(Member)"
                                                ,style: TextStyle(color: ac.AppColors.themeColor,
                                                  fontSize: TextSizes.text12
                                                ),),
                                              ],
                                            ),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){

                          },
                          child: Container(
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
                        ),
                      ],
                    ),
                  ),
                ),

                //members
                Positioned(
                  bottom: 40,
                  left: 30,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10.h),
                    padding: EdgeInsets.only(
                      left: 20.w,
                      top: 12.h,
                      bottom: 12.h,
                    ),
                    width: 315.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14.r),
                      color: ac.AppColors.textFieldColor,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10.0, // soften the shadow
                          spreadRadius: 1.0, //extend the shadow
                          offset: Offset(
                            1.0, // Move to right 5  horizontally
                            1.0, // Move to bottom 5 Vertically
                          ),
                        )
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () async {
                            final member = await Navigator.pushNamed(
                                context, RouteName.addMemberScreen,
                                arguments: model.circleValue);
                            if (member != null && member is Member) {
                              //  model.updateMemberList(member);
                              model.membersList.clear();
                              fetchMemberLocation();
                            }
                          },
                          child: Column(
                            children: [
                              Container(
                                height: 40.h,
                                width: 40.w,
                                padding: EdgeInsets.all(6.r),
                                decoration: BoxDecoration(
                                  color: ac.AppColors.themeColor,
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                child: Image.asset(
                                  "assets/images/addUser.png",
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                "Add",
                                style: GoogleFonts.prozaLibre(
                                    fontSize: 9.sp,
                                    color: ac.AppColors.themeColor,
                                    fontWeight: FontWeight.w400),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          ),
                        ),
                        Expanded(
                            child: model.isMemberLocationLoading
                                ? SizedBox(
                                    height: 70.h,
                                    child: const Center(
                                      child: CircularProgressIndicator(),
                                    ),
                                  )
                                : SizedBox(
                                    height: 70.h,
                                    child: model.membersList.isNotEmpty
                                        ? ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            itemCount: model.membersList.length,
                                            itemBuilder:
                                                ((context, index) => Container(
                                                      width: 40.h,
                                                      margin: EdgeInsets.only(
                                                          left: 12.w),
                                                      child: InkWell(
                                                        onTap: () async {
                                                          getAddress(index);
                                                        },
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Container(
                                                                width: 40.h,
                                                                height: 40.h,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.r),
                                                                ),
                                                                child: model
                                                                        .membersList[
                                                                            index]
                                                                        .photo
                                                                        .isNotEmpty
                                                                    ? ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(10
                                                                                .r),
                                                                        child:
                                                                            CachedNetworkImage(
                                                                          imageUrl: model
                                                                              .membersList[index]
                                                                              .photo!,
                                                                          placeholder: (context, url) => const Center(
                                                                              child: Padding(
                                                                            padding:
                                                                                EdgeInsets.all(8.0),
                                                                            child:
                                                                                CircularProgressIndicator(),
                                                                          )),
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ))
                                                                    : Image
                                                                        .asset(
                                                                        Images
                                                                            .userImage,
                                                                        height:
                                                                            40.h,
                                                                        width:
                                                                            40.h,
                                                                        fit: BoxFit
                                                                            .fill,
                                                                      )),
                                                            SizedBox(
                                                              height: 5.h,
                                                            ),
                                                            Text(
                                                              model
                                                                  .membersList[
                                                                      index]
                                                                  .name,
                                                              style: GoogleFonts.prozaLibre(
                                                                  fontSize:
                                                                      9.sp,
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                              maxLines: 1,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    )),
                                          )
                                        : const Center(
                                            child: Text("No members"),
                                          ),
                                  ))
                      ],
                    ),
                  ),
                ),

                //Add Geofence
                Positioned(
                  top: 90.h,
                  right: 0.1.w,
                  child: GestureDetector(
                      onTap: () {


                        Navigator.pushNamed(context, RouteName.addGeofenceScreen);
                      },
                      child: const LocationIcon()),
                ),
              ],
            ));
      },
    );
  }

  Future<void> getAddress(int index) async {
    String locationAddress;
    if (model.membersList[index].lat != null &&
        model.membersList[index].lng != null) {
      List<Placemark> placeMarks = await placemarkFromCoordinates(
          model.membersList[index].lat!, model.membersList[index].lng!);
      Placemark place = placeMarks[0];

      locationAddress =
          "${place.street ?? ""} ${place.subLocality ?? ""} ${place.locality ?? ""} ${place.country ?? ""}";
    } else {
      locationAddress = "No Address Found.";
    }

    String name = model.membersList[index].name;
    String image = model.membersList[index].photo;

    showAddressDialog(context, locationAddress, name, image).then((value) {
      if (value == true) {
        // Navigator.pushNamed(context, Routes.memberProfileScreen,
        //     arguments: model.membersLocationList[index]);

        Navigator.pushNamed(context, RouteName.memberLocationHistoryScreen,
            arguments: model.membersList[index]);
      }
    });
  }

  void _showMessage(String message) {
    context.showSnackBar(message: message);
  }

  Future<dynamic> showAddressDialog(
      BuildContext context, String locationAddress, name, image) {
    return showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return Dialog(
          elevation: 0,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.sp))),
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  top: 23.h, bottom: 23.h, left: 14.w, right: 14.w),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.sp),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 0.5.h,
                  ),
                  Row(
                    children: [
                      Container(
                          width: 40.h,
                          height: 40.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: image != null && image.isNotEmpty
                              ? ClipRRect(
                                  borderRadius: BorderRadius.circular(10.r),
                                  child: CachedNetworkImage(
                                    imageUrl: image,
                                    placeholder: (context, url) =>
                                        const CircularProgressIndicator(),
                                    fit: BoxFit.cover,
                                  ))
                              : Image.asset(
                                  Images.userImage,
                                  height: 40.h,
                                  width: 40.h,
                                  fit: BoxFit.fill,
                                )),
                      SizedBox(
                        width: 10.w,
                      ),
                      Expanded(
                        child: Text(
                          "$name",
                          style: TextStyles.prozaLibre400.copyWith(
                              fontSize: TextSizes.text16,
                              color: ac.AppColors.headingColor),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                          height: 24.h,
                          child: Image.asset("assets/images/subtract.png")),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.w, right: 8.w),
                          child: Text(
                            locationAddress,
                            style: TextStyles.prozaLibre500.copyWith(
                                fontSize: TextSizes.text14,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context, true);
                        },
                        child: Container(
                          padding: EdgeInsets.all(6.sp),
                          decoration: BoxDecoration(
                            color: ac.AppColors.themeColor,
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                  width: 40.w,
                                  child: Image.asset(
                                      "assets/images/locationicon.png")),
                              Text(
                                "History",
                                textAlign: TextAlign.center,
                                style: TextStyles.prozaLibre500.copyWith(
                                  fontSize: TextSizes.text9,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose

    logD("dispose call");
    super.dispose();
    timer?.cancel();
    memberLocationsTimer?.cancel();
  }
}
