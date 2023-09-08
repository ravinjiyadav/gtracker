import 'package:cached_network_image/cached_network_image.dart';
import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:dcbase/dcbase.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/AppComponents/app_colors.dart' as ac;
import 'package:g_tracker/AppComponents/common.dart';
import 'package:g_tracker/AppComponents/images.dart';
import 'package:g_tracker/AppComponents/text_size.dart';
import 'package:g_tracker/AppComponents/text_styles.dart';
import 'package:g_tracker/network/models/request/member/member_location_history/member_location_history_request.dart';
import 'package:g_tracker/network/models/response/members/members_location/members_location_response.dart';
import 'package:g_tracker/network/network_provider.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:intl/intl.dart';
import 'member_location_hostory_vm.dart';

class MemberLocationHistoryScreen extends ConsumerStatefulWidget {
  final MembersLocations member;

  const MemberLocationHistoryScreen( {super.key, required this.member});


  @override
  ConsumerState<MemberLocationHistoryScreen> createState() =>
      _MemberLocationHistoryScreenState();
}

class _MemberLocationHistoryScreenState
    extends ConsumerState<MemberLocationHistoryScreen> {
  DateTime selectedDay = DateTime.now();

  List<LatLng> polylineCoordinates = [];

  PolylinePoints polylinePoints = PolylinePoints();

  Set<Marker> markers = {};
  Map<PolylineId, Polyline> polyLines = {}; //polyLines to show direction
  late LatLng startLocation;
  late LatLng endLocation;
  List<PolylineWayPoint> polyLineWayPoint = []; //middle point

  late MemberLocationHistoryScreenVm model;

  String dateFormatForAddDate = 'yyyy-MM-dd';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    logD("Member Id : ${widget.member.id}");
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      model = MemberLocationHistoryScreenVm(ref.watch(memberRepositoryProvider));

      setState(() {

      });
      fetchMemberHistory();
    });

  }

  fetchMemberHistory() {
    var date = DateFormat(dateFormatForAddDate)
        .format(DateTime.parse("$selectedDay").toLocal());
    print("date is $date");

    model.fetchMemberLocationHistory(
      request: MemberLocationHistoryRequest(
          // date: "2023-03-15",
          // memberId: 45
          date: date,
          memberId: widget.member.id),
      onSuccess: (memberLocations) async {

        if (memberLocations.isNotEmpty) {
          logD("Location Length ${memberLocations.length}");
          polyLineWayPoint.clear();
          startLocation =
              LatLng(memberLocations[0].lat, memberLocations[0].lng);
          endLocation = LatLng(memberLocations[memberLocations.length - 1].lat,
              memberLocations[memberLocations.length - 1].lng);

          //Get address name


          //set middle lat long
          // if (memberLocations.length > 2) {
          //   for (var a = 0; a < memberLocations.length; a++) {
          //     List<Placemark> placeMarks = await placemarkFromCoordinates(
          //         memberLocations[a].lat, memberLocations[a].lng);
          //
          //     if (placeMarks.isNotEmpty) {
          //       Placemark place = placeMarks[0];
          //       String currentAddress =
          //           "${place.street} ${place.subLocality ?? ""} ${place.locality ?? ""} ${place.country ?? ""}";
          //
          //       polyLineWayPoint
          //           .add(PolylineWayPoint(location: currentAddress));
          //     }
          //   }
          // }

          polylineCoordinates.clear();

          if (memberLocations.length > 2) {
            for (var a = 0; a < memberLocations.length; a++) {



                polylineCoordinates.add(LatLng(memberLocations[a].lat, memberLocations[a].lng));


            }
          }


          setRoute();
          setMarker();
        }
      },
    );
  }

  setMarker() async {
    markers.clear();


    Uint8List? finalImg;

    if(widget.member.photo.isNotEmpty){
      String imgUrl = widget.member.photo;

      Uint8List networkMarkerIcon = await Common.getBytesFromNetwork(imgUrl);

      finalImg = networkMarkerIcon;

    }else{


      final Uint8List assetsMarkerIcon = await Common.getBytesFromAsset(Images.userImage, 70);


      finalImg = assetsMarkerIcon;


    }





    markers.add(Marker(
      markerId: const MarkerId("1"),
      position: LatLng(startLocation.latitude, startLocation.longitude),
      infoWindow: const InfoWindow(title: "Start"),
   //   icon: BitmapDescriptor.defaultMarker,
      icon: BitmapDescriptor.fromBytes(finalImg!),
    ));

    markers.add(Marker(
      markerId: const MarkerId("2"),
      position: LatLng(endLocation.latitude, endLocation.longitude),
      infoWindow: const InfoWindow(title: "End"),
      icon: BitmapDescriptor.fromBytes(finalImg!),
    ));

    setState(() {});

  }


  setRoute() async {
    logD("Way Point $polyLineWayPoint");

    // PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
    //   "AIzaSyBaT1X3uNAceoaqG0OpId8ac0raeI2vtvM",
    //   PointLatLng(startLocation.latitude, startLocation.longitude),
    //   PointLatLng(endLocation.latitude, endLocation.longitude),
    //   travelMode: TravelMode.driving,
    //   // wayPoints: [PolylineWayPoint(location: 'Navlakha,Indore,India')],
    //   wayPoints: polyLineWayPoint,
    // );



    //set polylineCoordinates bw two point
    // polylineCoordinates.clear();
    //
    // if (result.points.isNotEmpty) {
    //   result.points.forEach((PointLatLng point) {
    //     polylineCoordinates.add(LatLng(point.latitude, point.longitude));
    //   });
    // } else {
    //   logD(result.errorMessage);
    // }

    addPolyLine(polylineCoordinates);
  }

  addPolyLine(List<LatLng> polylineCoordinates) {
    PolylineId id = PolylineId("poly");
    Polyline polyline = Polyline(
      polylineId: id,
      color: ac.AppColors.themeColor,
      points: polylineCoordinates,
      width: 8,
    );
    polyLines[id] = polyline;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ac.AppColors.scaffoldColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,

        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Container(
                  width: 40.h,
                  height: 40.h,
                  decoration:
                  BoxDecoration(
                    borderRadius:
                    BorderRadius
                        .circular(
                        10.r),
                  ),
                  child: widget.member.photo
                          .isNotEmpty
                      ? ClipRRect(
                      borderRadius:
                      BorderRadius.circular(10
                          .r),
                      child:
                      CachedNetworkImage(
                        imageUrl: widget.member.photo,
                        placeholder: (context, url) => const CircularProgressIndicator(),
                        fit: BoxFit
                            .cover,
                      ))
                      : Image.asset(
                    Images.userImage,
                    height:
                    40.h,
                    width: 40.h,
                    fit: BoxFit
                        .fill,
                  )),
            ),
            SizedBox(
              width: 10.w,
            ),


            Expanded(

              child: Text(
                widget.member.name,
                style: TextStyles.prozaLibre500.copyWith(
                  fontSize: TextSizes.text16,
                  color: ac.AppColors.headingColor
                ),

              ),
            ),

          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 108.h,
            width: 356.w,
            child: DatePicker(
              DateTime.now().subtract(const Duration(days: 10)),
              daysCount: 11,
              initialSelectedDate: selectedDay,
              selectionColor: ac.AppColors.themeColor,
              inactiveDates: [
                DateTime.now().add(Duration(days: 2)),
                DateTime.now().add(Duration(days: 7))
              ],
              onDateChange: (date) {
                // New date selected
                selectedDay = date;
                model.isLoading.value = true;
                fetchMemberHistory();
                logD(selectedDay);
              },
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 18.w),
                  child: Text(
                    "Location History",
                    style: TextStyles.theme16px700,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Expanded(
                  child: ValueListenableBuilder<bool>(
                    valueListenable: model.isLoading,
                    builder: (context, isLoading, child) {
                      return isLoading == true
                          ? const Center(
                              child: CircularProgressIndicator(),
                            )
                          : model.memberLocationHistory.isEmpty
                              ? const Center(
                                  child: Text("No Location History."),
                                )
                              : GoogleMap(
                                  //  key: ValueKey(LatLng(startLocation.latitude, startLocation.longitude)),
                                  zoomControlsEnabled: false,
                                  myLocationButtonEnabled: false,
                                  markers: markers,
                                  initialCameraPosition: CameraPosition(
                                      tilt: 50,
                                      target: LatLng(startLocation.latitude,
                                          startLocation.longitude),
                                      zoom: 14),
                                  polylines: Set<Polyline>.of(polyLines.values),
                                  onMapCreated:
                                      (GoogleMapController controller) {},
                                );
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class LocationHistoryContainer extends StatelessWidget {
  const LocationHistoryContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 78.h,
      width: 315.w,
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
          color: ac.AppColors.light1GreyColor,
        ),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 21.0.h, top: 11.h, left: 5.w),
            child: Image.asset(
              "assets/images/redloc.png",
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Text(
                """60, ulica Ponomarenko, Tivali\n Fruenzyenski District, Minsk,""",
                style: TextStyles.black12px500,
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                DateTime.now().toString(),
                style: TextStyles.grey10px400,
              )
            ],
          ),
        ],
      ),
    );
  }
}
