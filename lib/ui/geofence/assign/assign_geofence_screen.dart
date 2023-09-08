// ignore_for_file: avoid_print

import 'package:dcbase/dcbase_base_widgets.dart';
import 'package:dcbase/dcbase_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:g_tracker/AppComponents/app_colors.dart';
import 'package:g_tracker/network/models/request/place/assign_place/assign_place_request.dart';
import 'package:g_tracker/network/models/response/members/member.dart';
import 'package:g_tracker/network/models/response/members/members_location/members_location_response.dart';
import 'package:g_tracker/network/models/response/place/place.dart';
import 'package:g_tracker/network/network_provider.dart';
import 'package:g_tracker/ui/geofence/assign/assign_geofence_vm.dart';
import 'package:g_tracker/widgets/api_progress_aware_view.dart';
import 'package:g_tracker/widgets/custom_button.dart';
import 'package:google_fonts/google_fonts.dart';

class AssignGeofenceScreen extends ConsumerStatefulWidget {
  final Member member;

  const AssignGeofenceScreen({Key? key, required this.member})
      : super(key: key);

  @override
  ConsumerState<AssignGeofenceScreen> createState() =>
      _AssignGeofenceScreenState();
}

class _AssignGeofenceScreenState extends ConsumerState<AssignGeofenceScreen> {
  Place? placeValue;

  bool onArriveValue = true;
  bool onLeave = true;

  late final AssignGeofenceVm assignGeofenceVm;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    print("Member name is ${widget.member.name}");
    print("Member id is ${widget.member.id}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Geofence"),
        centerTitle: true,
      ),
      body: BaseWidget<AssignGeofenceVm>(
        model: AssignGeofenceVm(
          ref.read(placeRepositoryProvider),
        ),
        onModelReady: (model) {
          assignGeofenceVm = model;
        },
        builder: (context, model, child) {
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 30.w, right: 30.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 16.h,
                  ),
                  Container(
                    height: 50.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: const Color(0xFFF4F5F7),
                        borderRadius: BorderRadius.all(Radius.circular(25.r))),
                    padding: EdgeInsets.only(left: 12.w, right: 12.w),
                    child: ValueListenableBuilder<List<Place>>(
                        valueListenable: model.placeNotifier,
                        builder: (context, list, child) {
                          return DropdownButtonHideUnderline(
                            child: DropdownButton(
                              hint: const Text('Please Select Geofence'),
                              value: placeValue,
                              onChanged: (newValue) {
                                setState(() {
                                  placeValue = newValue;

                                  print("placeValue $placeValue");
                                });
                              },
                              // items: <String>["First", "Second", "Third", "Fourth"]
                              items: list.map((value) {
                                return DropdownMenuItem(
                                  value: value,
                                  child: Text(value.name),
                                );
                              }).toList(),
                            ),
                          );
                        }),
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          "On Arrive",
                          style: GoogleFonts.prozaLibre(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        /* width: 56,
                      height: 32,*/
                        width: 52,
                        height: 28,
                        child: FlutterSwitch(
                          activeColor: AppColors.themeColor,
                          padding: 3,
                          width: 56,
                          height: 32,
                          value: onArriveValue,
                          toggleSize: 28,
                          onToggle: (val) {
                            onArriveValue = val;

                            setState(() {});
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          "On Leave",
                          style: GoogleFonts.prozaLibre(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        /* width: 56,
                      height: 32,*/
                        width: 52,
                        height: 28,
                        child: FlutterSwitch(
                          activeColor: AppColors.themeColor,
                          padding: 3,
                          width: 56,
                          height: 32,
                          value: onLeave,
                          toggleSize: 28,
                          onToggle: (val) {
                            onLeave = val;

                            setState(() {});
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  ProgressAwareView(
                    screenState: model.screenStateNotifier,
                    child: CustomButton(
                      onPress: () {
                        print("placeValue $placeValue");

                        if (placeValue != null) {
                          model.assignGeofence(
                              request: AssignPlaceRequest(
                                  member_id: widget.member.id,
                                  place_id: placeValue!.id),
                              onSuccess: (message) {
                                Navigator.pop(context, true);

                                _showMessage(message);
                              },
                              onFailure: (message) {
                                _showMessage(message);
                              });
                        }
                      },
                      title: "Save",
                      color: AppColors.themeColor,
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _showMessage(String message) {
    context.showSnackBar(message: message);
  }
}
