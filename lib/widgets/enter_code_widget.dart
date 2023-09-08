import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/widgets/widgets.dart';

import '../AppComponents/app_colors.dart';
import '../AppComponents/text_styles.dart';

class EnterCodeWidget extends StatelessWidget {
  const EnterCodeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: 315.w,
      decoration: BoxDecoration(
        color: AppColors.lightGreyColor,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                width: 20.w,
              ),
              Container(
                height: 40.h,
                width: 40.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  color: const Color(0xFFFF4444),
                ),
                child: const Icon(
                  CupertinoIcons.forward,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 12.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BigHeading2(
                      heading: "Enter Code", styles: TextStyles.theme16px700),
                  NormalText3(
                    title: "I have an invitation Code",
                    textStyle: TextStyles.normalTextStyle3,
                  )
                ],
              )
            ],
          ),
          Image.asset(
            "assets/images/mobile.png",
            height: 70.h,
            width: 68.5.w,
          )
        ],
      ),
    );
  }
}
