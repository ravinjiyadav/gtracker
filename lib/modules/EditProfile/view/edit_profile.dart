// ignore_for_file: deprecated_member_use

import 'package:dcbase/dcbase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/AppComponents/text_styles.dart';
import 'package:g_tracker/widgets/widgets.dart';
import 'package:image_picker/image_picker.dart';
import '../controller/edit_profile_vm.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          customAppbar2(context, "Profile", () {}, TextStyles.appBarText1Style),
      body: BaseWidget(
        model: EditProfileScreenVm(),
        onModelReady: (modal) {},
        builder: (context, modal, child) {
          return Column(
            children: [
              SizedBox(
                height: 40.h,
              ),
              Stack(
                children: [
                  Container(
                    height: 100.h,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: modal.isProfilePathSet
                            ? FileImage(
                                modal.pickedFile!,
                              ) as ImageProvider
                            : const AssetImage("assets/images/biguser.png"),
                      ),
                      shape: BoxShape.circle,
                    ),
                    // ),
                  ),
                  Positioned(
                    top: 70.h,
                    right: 136.w,
                    child: GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) => SizedBox(
                            height: 200.h,
                            width: double.infinity,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 20.h,
                                ),
                                Text(
                                  "Choose Profile Photo",
                                  style: TextStyles.theme16px700,
                                ),
                                SizedBox(
                                  height: 40.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        modal.pickImage(
                                            ImageSource.camera, context);
                                      },
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.image,
                                            size: 30.r,
                                          ),
                                          Text(
                                            "Camera",
                                            style: TextStyles.theme20px700,
                                          )
                                        ],
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        modal.pickImage(
                                            ImageSource.gallery, context);
                                      },
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.camera,
                                            size: 30.r,
                                          ),
                                          Text(
                                            "Gallery",
                                            style: TextStyles.theme20px700,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      child: Container(
                        height: 24.h,
                        width: 24.w,
                        padding: EdgeInsets.all(3.r),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(),
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          "assets/images/camera.png",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomTextField(
                child: TextFormField(
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomButton(
                onPress: () {},
                title: "Update",
              )
            ],
          );
        },
      ),
    );
  }
}
