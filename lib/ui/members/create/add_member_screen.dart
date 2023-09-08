import 'dart:io';
import 'package:dcbase/dcbase.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/AppComponents/app_colors.dart' as ac;
import 'package:g_tracker/network/models/request/member/add_member_request.dart';
import 'package:g_tracker/network/models/response/basic_response.dart';
import 'package:g_tracker/network/models/response/circles/circle.dart';
import 'package:g_tracker/network/models/response/device/trackable_device.dart';
import 'package:g_tracker/network/network_provider.dart';
import 'package:g_tracker/ui/members/create/add_member_screen_vm.dart';
import 'package:g_tracker/ui/members/create/dropdown_with_add.dart';
import 'package:g_tracker/widgets/api_progress_aware_view.dart';
import 'package:g_tracker/widgets/simple_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';

import '../../../Helper/routes/route_name.dart';
import 'package:g_tracker/widgets/common_button.dart';

class AddMemberScreen extends ConsumerStatefulWidget {
  final Circle? circleValue;

  const AddMemberScreen({Key? key, this.circleValue}) : super(key: key);

  @override
  ConsumerState<AddMemberScreen> createState() => _AddMemberScreenState();
}

class _AddMemberScreenState extends ConsumerState<AddMemberScreen> {
  late final AddMemberScreenVm memberScreenVm;

  TextEditingController nameController = TextEditingController();
  Circle? circleValue;
  TrackableDevice? deviceIdValue;

  // Pick an image
  XFile? image;

  TextEditingController mobileNumberController = TextEditingController();
  String? countryCodeIs;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    if (widget.circleValue != null) {
      circleValue = widget.circleValue;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Member"),
        centerTitle: true,
      ),
      body: BaseWidget<AddMemberScreenVm>(
        model: AddMemberScreenVm(
            ref.read(memberRepositoryProvider),
            ref.read(circleRepositoryProvider),
            ref.read(deviceRepositoryProvider)),
        onModelReady: (model) {
          memberScreenVm = model;
          if (widget.circleValue != null) {
            memberScreenVm.circlesNotifier.value = [circleValue!];
          }
        },
        builder: (context, model, child) {
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 30.w, right: 30.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 48.h,
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () async {
                        image = await ImagePicker()
                            .pickImage(source: ImageSource.gallery);
                        setState(() {});
                      },
                      child: Stack(
                        children: [
                          Container(
                            width: 100.w,
                            height: 100.w,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: ac.AppColors.textFieldColor),
                            child: image != null
                                ? ClipOval(
                                    child: Image.file(
                                      File(image!.path),
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                : Center(
                                    child: Text(
                                      "100x100",
                                      style: GoogleFonts.prozaLibre(
                                        fontStyle: FontStyle.normal,
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.w400,
                                        //   color: const Color(0xFFA4A4A8),
                                        color: ac.AppColors.hintColor,
                                      ),
                                    ),
                                  ),
                          ),
                          // image != null
                          //     ? const SizedBox()
                          //     :
                          Positioned(
                            bottom: 16.w,
                            right: 0.w,
                            child: Container(
                              height: 24.h,
                              width: 24.w,
                              padding: EdgeInsets.all(3.r),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border:
                                    Border.all(color: ac.AppColors.themeColor),
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                "assets/images/camera.png",
                                color: ac.AppColors.themeColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  SimpleTextField(
                    hint: "Full Name",
                    controller: nameController,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  DropdownWithAdd(
                    dataNotifier: model.circlesNotifier,
                    dummyAdd: const Circle(id: -1, name: "-1"),
                    onAddNewTap: () {
                      Navigator.pushNamed(context, RouteName.createCircleScreen)
                          .then((value) {
                        if (value != null && value is Circle) {
                          model.updateCircleList(value);
                        }
                      });
                    },
                    value: circleValue,
                    onChanged: (Circle? circle) {
                      setState(() {
                        circleValue = circle;
                      });
                    },
                    addNewTile: const Text("+ Add new Circle"),
                    itemText: (Circle circle) {
                      return circle.name;
                    },
                    hint: "Select Circle",
                  ),
                  // SizedBox(height: 16.h),
                  // Container(
                  //   height: 50.h,
                  //   decoration: BoxDecoration(
                  //       color: const Color(0xFFF4F5F7),
                  //       borderRadius: BorderRadius.all(Radius.circular(25.r))),
                  //   padding: EdgeInsets.only(left: 12.w, right: 12.w),
                  //   child: DropdownButtonHideUnderline(
                  //     child: DropdownButton<String>(
                  //       isExpanded: true,
                  //       hint: Text(
                  //         "Select Device Type",
                  //         style: TextStyles.hintTextStyle,
                  //         overflow: TextOverflow.ellipsis,
                  //       ),
                  //       items: deviceTypeList
                  //           .map((e) => DropdownMenuItem<String>(
                  //               value: e,
                  //               child: Text(
                  //                 e,
                  //                 style: TextStyles.black16px400,
                  //               )))
                  //           .toList(),
                  //       value: selectDeviceType,
                  //       onChanged: (String? value) {
                  //         selectDeviceType = value!;
                  //
                  //         setState(() {});
                  //
                  //         print("Selected text is ${selectDeviceType}");
                  //       },
                  //       icon: const Icon(Icons.keyboard_arrow_down),
                  //       iconSize: 30.sp,
                  //       iconEnabledColor: Colors.black,
                  //       iconDisabledColor: Colors.black,
                  //     ),
                  //   ),
                  // ),
                  Padding(
                    padding: EdgeInsets.only(top: 16.h),
                    child: DropdownWithAdd(
                      dataNotifier: model.devicesNotifier,
                      dummyAdd: const TrackableDevice(id: -1, imei: "-1"),
                      value: deviceIdValue,
                      onAddNewTap: () {
                        Navigator.pushNamed(
                                context, RouteName.addTrackableDeviceScreen)
                            .then((value) {
                          if (value != null && value is TrackableDevice) {
                            model.updateDeviceList(value);
                          }
                        });
                      },
                      onChanged: (TrackableDevice? device) {
                        setState(() {
                          deviceIdValue = device;
                        });
                      },
                      addNewTile: const Text("+ Add new Device"),
                      itemText: (TrackableDevice device) {
                        return device.imei;
                      },
                      hint: "G-Tracker Device Id",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16.h),
                    child: Container(
                      //   height: 50.h,
                      child: Form(
                        key: _formKey,
                        child: IntlPhoneField(
                          disableLengthCheck: false,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          controller: mobileNumberController,
                          decoration: InputDecoration(
                            fillColor: ac.AppColors.textFieldColor,
                            hintText: "Phone Number",

                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.only(top: 14.h, bottom: 14.h),
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
                            focusedErrorBorder:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.r),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                          ),
                          keyboardType: TextInputType.number,
                          dropdownIconPosition: IconPosition.trailing,
                          flagsButtonPadding: EdgeInsets.only(left: 20.w),
                          initialCountryCode: 'IN',
                          onSubmitted: (String? value) {
                            // on keyboard done tap
                          },
                          onSaved: (PhoneNumber? phone) {
                            if (phone != null) {
                              countryCodeIs = phone.countryCode;
                              logD("countryCodeIs  gggg");
                              logD(countryCodeIs);
                            }
                          },
                        ),
                      ),
                    ),
                  ),


                  SizedBox(
                    height: 16.h,
                  ),
                  ProgressAwareView(
                    screenState: model.screenStateNotifier,
                    child: CommonButton(
                      onPress: () async {
                        FocusManager.instance.primaryFocus?.unfocus();
                        _formKey.currentState!.save();

                        logD("country code is $countryCodeIs");
                        logD("mobile ${mobileNumberController.text}");
                        if (nameController.text.isEmpty) {
                          context.showSnackBar(
                              message: "Please Enter Full Name.");
                        } else if (circleValue == null) {
                          context.showSnackBar(
                              message: "Please Select Circle.");
                        }
                        // else if (selectDeviceType == null) {
                        //   context.showSnackBar(
                        //       message: "Please Select Device Type.");
                        // }
                        // else if (selectDeviceType == "device" &&
                        //     deviceIdValue == null) {
                        //   context.showSnackBar(
                        //       message: "Please Select G-Tracker Device.");
                        // } else if (selectDeviceType == "mobile" &&
                        //     mobileNumberController.text.isEmpty) {
                        //   context.showSnackBar(
                        //       message: "Please Enter Mobile Number.");
                        // }

                        else if (mobileNumberController.text.isEmpty &&
                            deviceIdValue == null) {
                          context.showSnackBar(
                              message: "Please Enter Mobile Number or Select G-Tracker Device.");
                        }

                        else {
                          model.addMember(
                            image: image,
                            request: AddMemberRequest(
                                name: nameController.text,
                                circleId: circleValue!.id,
                                deviceId: deviceIdValue?.id,
                             // deviceType: selectDeviceType!,
                              mobile: mobileNumberController.text,
                              countryCode: countryCodeIs,
                            ),
                            onSuccess: _onSuccess,
                            onFailure: _onFailure,
                          );
                        }
                      },
                      title: "Save",
                      color: ac.AppColors.themeColor,
                    ),
                  ),
                  SizedBox(height: 16.h),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _onSuccess(BasicResponse response) {
    context.showSnackBar(message: response.message);
   // Navigator.of(context).pop(response.member);
    Navigator.pop(context,true);
  }

  void _onFailure(String message) {
    context.showErrorSnackBar(message: message);
  }

// Future<void> _selectDate(BuildContext context) async {
//   final DateTime? selected = await showDatePicker(
//       context: context,
//       initialDate: DateTime.now(),
//       firstDate: DateTime(1900),
//       lastDate: DateTime.now());
//   if (selected != null) {
//     String formattedDate = DateFormat('yyyy-MM-dd').format(selected);
//     dobController.text = formattedDate;
//   }
// }
}
