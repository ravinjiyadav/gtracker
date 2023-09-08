import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/AppComponents/app_colors.dart';
import 'package:g_tracker/AppComponents/text_size.dart';
import 'package:g_tracker/AppComponents/text_styles.dart';
import 'custom_button.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({
    Key? key,
    required this.heading,
    required this.subHeading,
    required this.onYesTab,
    this.yesText = "Sure",
    this.noText = "Cancel",
  }) : super(key: key);

  final String heading;
  final String subHeading;
  final String yesText;
  final String noText;

  final VoidCallback onYesTab;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.sp))),
      child: SingleChildScrollView(
        child: Container(
          padding:
              EdgeInsets.only(left: 10.w, right: 10.w, top: 30.h, bottom: 20.h),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.sp),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(heading,
                  style: TextStyles.prozaLibre600.copyWith(
                    fontSize: TextSizes.text18,
                    color: AppColors.headingColor,
                  )),
              SizedBox(
                height: 10.h,
              ),
              Container(
                padding: EdgeInsets.only(left: 2.w, right: 2.w),
                child: Text(
                  subHeading,
                  style: TextStyles.prozaLibre600.copyWith(
                    fontSize: TextSizes.text14,
                    color: AppColors.headingColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                child: Row(
                  children: [
                    Expanded(
                        child: CustomButton(
                      color: AppColors.themeColor,
                      title: noText,
                      onPress: () {
                        Navigator.pop(context);
                      },
                    )),
                    SizedBox(
                      width: 2.w,
                    ),
                    Expanded(
                        child: CustomButton(
                            title: yesText,
                            onPress: () {
                              onYesTab();
                            })),
                  ],
                ),
              ),
              SizedBox(
                height: 3.75.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
