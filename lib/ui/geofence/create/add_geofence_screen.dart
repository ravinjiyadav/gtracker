import 'package:dcbase/dcbase.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/AppComponents/text_styles.dart';
import 'package:g_tracker/constants/fence_type.dart';
import 'package:g_tracker/network/models/request/place/add_place_request.dart';
import 'package:g_tracker/network/network_provider.dart';
import 'package:g_tracker/ui/geofence/create/add_geofence_screen_vm.dart';
import 'package:g_tracker/widgets/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../AppComponents/app_colors.dart' as ac;

class AddGeofenceScreen extends ConsumerStatefulWidget {
  const AddGeofenceScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<AddGeofenceScreen> createState() => _AddGeofenceScreenState();
}

class _AddGeofenceScreenState extends ConsumerState<AddGeofenceScreen> {
  late AddGeofenceScreenVm geofenceVm;
  String fenceType = FenceType.circle;
  Set<Marker> markers = {};
  Set<Circle> circles = {};
  Set<Polygon> polygons = {};
  List<LatLng> polygonsLatLng = [];
  late GoogleMapController? controller;

  TextEditingController geoFenceNameController = new TextEditingController();

  var currentSliderValue = 0.0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Geofence"),
      ),
      body: BaseWidget<AddGeofenceScreenVm>(
        model: AddGeofenceScreenVm(ref.watch(placeRepositoryProvider)),
        onModelReady: (model) {
          geofenceVm = model;
        },
        builder: (context, model, child) {
          return Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 22.w, right: 22.w),
                child: SizedBox(
                  height: 50.h,
                  child: TextFormField(
                    controller: geoFenceNameController,
                    onTap: () {},
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.text,
                    style: TextStyles.black16px400,
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.only(left: 12.w, right: 12.w),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.r),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.r),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.r),
                          borderSide: BorderSide.none,
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.r),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: ac.AppColors.textFieldColor,
                        hintText: "Enter Geofence Name",
                        hintStyle: TextStyles.hintTextStyle,
                       // prefixIcon: Icon(Icons.search)
                    ),
                  ),
                ),
              ),
              CupertinoSlidingSegmentedControl<String>(
                backgroundColor: Theme.of(context).colorScheme.background,
                thumbColor: Theme.of(context).colorScheme.secondaryContainer,
                padding: const EdgeInsets.all(8),
                groupValue: fenceType,
                children: {
                  FenceType.circle: buildSegment("Circle"),
                  FenceType.polygon: buildSegment("Polygon"),
                },
                onValueChanged: _onFenceTypeChange,
              ),
              ElevatedButton(
                  onPressed: _onSaveTap, child: Text("Save Geofence")),
              const SizedBox(height: 8),
              Expanded(
                child: GoogleMap(
                  key: const ValueKey(
                      LatLng(22.71025685482405, 75.88860423042082)),
                  markers: markers,
                  circles: circles,
                  polygons: polygons,
                  zoomControlsEnabled: false,
                  initialCameraPosition: const CameraPosition(
                      tilt: 50,
                      target: LatLng(22.71025685482405, 75.88860423042082),
                      zoom: 15),
                  onMapCreated: (GoogleMapController controller) {
                    this.controller = controller;
                  },
                  onTap: _onMapTap,
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  void _onFenceTypeChange(String? value) {
    if (value == null) return;

    if (value == FenceType.circle) {
      polygonsLatLng.clear();
      polygons.clear();
    } else {
      circles.clear();
    }
    setState(() {
      fenceType = value;
    });

    // if (fenceType == FenceType.circle) {
    //   _showCircleBottomSheet(context);
    // } else {
    //   _showPolygonBottomSheet(context);
    // }
  }

  void _onMapTap(LatLng? latLng) {
    if (latLng == null) {
      return;
    }
    if (fenceType == FenceType.circle) {
      setState(() {
        final circle = Circle(
            circleId: CircleId(latLng.toString()),
            center: latLng,
            radius: 1000,
            strokeWidth: 1,
            fillColor:
                Theme.of(context).colorScheme.secondaryContainer.withAlpha(95),
            strokeColor: Theme.of(context).colorScheme.secondary);
        circles.clear();
        circles.add(circle);
      });
    } else if (fenceType == FenceType.polygon) {
      setState(() {
        polygonsLatLng.add(latLng);
        _setPolygon();
      });
    }
  }

  void _setPolygon() {
    polygons.add(Polygon(
      polygonId: PolygonId("fence_polygon"),
      strokeWidth: 6,
      fillColor: Theme.of(context).colorScheme.secondaryContainer.withAlpha(95),
      strokeColor: Theme.of(context).colorScheme.secondary,
      points: polygonsLatLng,
      geodesic: true,
    ));
  }

  void _onSaveTap() {



    if(geoFenceNameController.text.isNotEmpty){

      AddPlaceRequest? request;
      if (fenceType == FenceType.circle) {
        if (circles.isEmpty) {
          _showMessage("Tap on map to add circle");
          return;
        }
        final circle = circles.first;
        request = AddPlaceRequest(
        //  name: "Dummy Name",
          name: geoFenceNameController.text,
          type: fenceType,
          lat: circle.center.latitude,
          lng: circle.center.longitude,
          radius: circle.radius,
        );
        logD(request.toJson());
      } else {
        if (polygons.isEmpty) {
          _showMessage("No polygon found");
          return;
        }
        final polygon = polygons.first;
        request = AddPlaceRequest(
          //  name: "Dummy Name",
            name: geoFenceNameController.text,
            type: fenceType,
            geofence: polygon.points
                .map((e) => LatLngInfo(lat: e.latitude, lng: e.longitude))
                .toList());
        logD(request.toJson());
      }

      geofenceVm.addGeofence(
        request: request,
        onSuccess: _onGeofenceCreated,
        onFailure: _showMessage,
      );
    }else{
      _showMessage("Please Enter Geofence Name.");

    }



  }

  void _onGeofenceCreated(String message) {
    context.showSnackBar(message: message);
    Navigator.pop(context,true);
  }

  void _showMessage(String message) {
    context.showSnackBar(message: message);
  }

  Widget buildSegment(String text) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }

  Future<void> _showCircleBottomSheet(BuildContext context) async {
    return showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.r),
      ),
      builder: (context) => SingleChildScrollView(child: StatefulBuilder(
        builder: (context, setState) {
          return Container(
            width: double.infinity,
            color: Colors.white,
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: SafeArea(
              child: Container(
                  padding: EdgeInsets.only(
                      left: 23.w, right: 23.w, top: 19.h, bottom: 19.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 2.50.h,
                      ),
                      Text(
                        "Expand Area",
                        style: GoogleFonts.poppins(
                            color: ac.AppColors.headingColor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "${currentSliderValue.toInt()} KM",
                            style: GoogleFonts.poppins(
                                color: ac.AppColors.color626262,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "8 KM",
                            style: GoogleFonts.poppins(
                                color: ac.AppColors.color626262,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTrackColor: ac.AppColors.themeColor,
                          inactiveTrackColor: ac.AppColors.hintColor,
                          trackHeight: 3.0,
                          thumbColor: ac.AppColors.themeColor,
                          thumbShape: const RoundSliderThumbShape(
                              enabledThumbRadius: 8.0),
                          overlayColor: Colors.green.withAlpha(32),
                          overlayShape:
                              const RoundSliderOverlayShape(overlayRadius: 1.0),
                        ),
                        child: Slider(
                          value: currentSliderValue,
                          max: 8,
                          label: currentSliderValue.round().toString(),
                          onChanged: (double value) {
                            currentSliderValue = value;
                            // setDistance(value);

                            setState(() {});
                          },
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      CustomButton(
                        onPress: () {},
                        title: "Save Geofence",
                        color: ac.AppColors.themeColor,
                      ),
                    ],
                  )),
            ),
          );
        },
      )),
    );
  }

  Future<void> _showPolygonBottomSheet(BuildContext context) async {
    return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.r),
      ),
      builder: (context) => Container(
        child: Container(
          width: double.infinity,
          color: Colors.white,
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: SafeArea(
            child: Container(
                height: 260.h,
                padding: EdgeInsets.only(left: 23.w, right: 23.w, top: 19.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 2.50.h,
                    ),
                    Text(
                      "Expand Area",
                      style: GoogleFonts.poppins(
                          color: ac.AppColors.headingColor,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      height: 120.h,
                      child: ListView.builder(
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return Container(
                              padding: EdgeInsets.only(bottom: 5.h),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/circle_location.png",
                                    height: 28.w,
                                    width: 28.w,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Expanded(
                                      child: Text(
                                    "Point Two",
                                    style: GoogleFonts.poppins(
                                        color: ac.AppColors.color626262,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w600),
                                  )),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Image.asset(
                                    "assets/images/cross_icon.png",
                                    height: 28.w,
                                    width: 28.w,
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    CustomButton(
                      onPress: () {},
                      title: "Save Geofence",
                      color: ac.AppColors.themeColor,
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
