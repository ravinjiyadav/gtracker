import 'package:dcbase/dcbase_base_widgets.dart';
import 'package:dcbase/dcbase_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:g_tracker/AppComponents/app_colors.dart' as ac;
import 'package:g_tracker/AppComponents/common_dialog.dart';
import 'package:g_tracker/network/models/response/circles/circle.dart';
import 'package:g_tracker/network/network_provider.dart';
import 'package:g_tracker/ui/circle/create/create_circle_vm.dart';
import 'package:g_tracker/widgets/api_progress_aware_view.dart';
import 'package:g_tracker/widgets/custom_button.dart';
import 'package:g_tracker/widgets/simple_text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateCircleScreen extends ConsumerStatefulWidget {
  final Circle? circle;
  final String? from;

  const CreateCircleScreen({Key? key, this.circle, this.from = "Add"})
      : super(key: key);

  @override
  ConsumerState<CreateCircleScreen> createState() => _CreateCircleScreenState();
}

class _CreateCircleScreenState extends ConsumerState<CreateCircleScreen> {
  late final CreateCircleVm createCircleVm;
  TextEditingController nameController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    if (widget.from != "Add") {
      nameController.text = widget.circle?.name ?? "";
      showMyLocationToOther = widget.circle?.showMyLocationToOthers ?? true;
      showMemberLocationToOther =
          widget.circle?.showMembersLocationToOthers ?? true;
    }
  }

  bool showMyLocationToOther = true;
  bool showMemberLocationToOther = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.from == "Add" ? "Add Circle" : "Update Circle"),
        centerTitle: true,
      ),
      body: BaseWidget(
        model: CreateCircleVm(ref.read(circleRepositoryProvider)),
        onModelReady: (model) {
          createCircleVm = model;
        },
        builder: (context, model, child) {
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 30.w, right: 30.w),
              child: Column(
                children: [
                  SizedBox(height: 48.h),
                  SimpleTextField(
                    hint: "Enter Circle Name",
                    controller: nameController,
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          "Show My Location To Other",
                          style: GoogleFonts.prozaLibre(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      ),
                      SizedBox(width: 5.w),
                      SizedBox(
                        width: 52,
                        height: 28,
                        child: FlutterSwitch(
                          activeColor: ac.AppColors.themeColor,
                          padding: 3,
                          width: 56,
                          height: 32,
                          value: showMyLocationToOther,
                          toggleSize: 28,
                          onToggle: (val) {
                            showMyLocationToOther = val;

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
                          "Show Member Location To Other",
                          style: GoogleFonts.prozaLibre(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      ),
                      SizedBox(width: 5.w),
                      SizedBox(
                        width: 52,
                        height: 28,
                        child: FlutterSwitch(
                          activeColor: ac.AppColors.themeColor,
                          padding: 3,
                          width: 56,
                          height: 32,
                          value: showMemberLocationToOther,
                          toggleSize: 28,
                          onToggle: (val) {
                            showMemberLocationToOther = val;

                            setState(() {});
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(height: 24.h),
                  ProgressAwareView(
                    screenState: model.screenStateNotifier,
                    child: CustomButton(
                      onPress: () async {
                        FocusManager.instance.primaryFocus?.unfocus();

                        if (nameController.text.isNotEmpty) {
                          if (widget.from == "Add") {
                            model.createCircle(
                                name: nameController.text,
                                showMyLocationToOthers: showMyLocationToOther,
                                showMembersLocationToOthers:
                                    showMemberLocationToOther,
                                onSuccess: (response) {
                                  nameController.clear();
                                  Navigator.pop(context, response);
                                },
                                onFailure: (error) {
                                  context.showSnackBar(message: error);
                                });
                          } else {


                            model.updateCircle(
                                name: nameController.text,
                                circleId: widget.circle!.id,
                                showMyLocationToOthers: showMyLocationToOther,
                                showMembersLocationToOthers:
                                showMemberLocationToOther,
                                onSuccess: (message) {
                                  context.showSnackBar(message: message);

                                  Navigator.pop(context,true);
                                },
                                onFailure: (error) {

                                  context.showSnackBar(message: error);
                                });


                          }
                        } else {
                          context.showSnackBar(
                              message: "Please Enter Circle name");
                        }
                      },
                      title:
                          widget.from == "Add" ? "Add Circle" : "Update Circle",
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
}
