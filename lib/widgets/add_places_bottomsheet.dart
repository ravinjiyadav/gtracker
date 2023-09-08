import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/widgets/custom_back_button.dart';
import 'package:g_tracker/widgets/widgets.dart';

import '../AppComponents/app_colors.dart';
import '../AppComponents/text_styles.dart';

class AddPlacesBottomSheet extends StatelessWidget {
  const AddPlacesBottomSheet({
    Key? key,
    required this.heading,
    required this.onPress,
  }) : super(key: key);

  final String heading;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 296.h,
        width: 375.w,
        padding: EdgeInsets.all(20.r),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(26.r),
            topRight: Radius.circular(26.r),
          ),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              const CustomBackButton2(),
              SizedBox(
                width: 10.w,
              ),
              NormalText3(
                title: heading,
                textStyle: TextStyles.userTextStyle,
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          CustomTextField(
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 20.r),
                border: InputBorder.none,
                hintText: "Name of Location",
                hintStyle: TextStyles.hintTextStyle1,
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          CustomButton(
            onPress: onPress,
            title: "Next",
            color: AppColors.themeColor,
          ),
        ]));
  }
}

class ChooseLocationIcon extends StatelessWidget {
  const ChooseLocationIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Image.asset(
              "assets/images/point.png",
              height: 16.h,
              width: 16.w,
            ),
            Container(
              color: const Color(0xFFC4C4C4),
              height: 3.h,
              width: 1,
            ),
            SizedBox(
              height: 3.h,
            ),
            Container(
              color: const Color(0xFFC4C4C4),
              height: 3.h,
              width: 1,
            ),
            SizedBox(
              height: 3.h,
            ),
            Container(
              color: const Color(0xFFC4C4C4),
              height: 3.h,
              width: 1,
            ),
            SizedBox(
              height: 3.h,
            ),
            Container(
              color: const Color(0xFFC4C4C4),
              height: 3.h,
              width: 1,
            ),
            SizedBox(
              height: 3.h,
            ),
            Container(
              color: const Color(0xFFC4C4C4),
              height: 3.h,
              width: 1,
            ),
            SizedBox(
              height: 3.h,
            ),
            Container(
              color: const Color(0xFFC4C4C4),
              height: 3.h,
              width: 1,
            ),
            SizedBox(
              height: 3.h,
            ),
            Container(
              color: const Color(0xFFC4C4C4),
              height: 3.h,
              width: 1,
            ),
            SizedBox(
              height: 3.h,
            ),
            Container(
              color: const Color(0xFFC4C4C4),
              height: 3.h,
              width: 1,
            ),
            SizedBox(
              height: 3.h,
            ),
            Container(
              color: const Color(0xFFC4C4C4),
              height: 3.h,
              width: 1,
            ),
            SizedBox(
              height: 3.h,
            ),
            Image.asset(
              "assets/images/subtract.png",
              height: 22.67.h,
              width: 16,
            ),
          ],
        ),
        Column(
          children: [
            CustomTextField2(
              width: 280.w,
              height: 65.h,
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Choose Starting point",
                  hintStyle: TextStyles.hintTextStyle1,
                  contentPadding: EdgeInsets.only(left: 20.w),
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            CustomTextField2(
              width: 280.w,
              height: 65.h,
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Choose Destination",
                  hintStyle: TextStyles.hintTextStyle1,
                  contentPadding: EdgeInsets.only(left: 20.w),
                ),
              ),
            ),
          ],
        ),
        Image.asset(
          "assets/images/updown.png",
          height: 20.h,
          width: 20.w,
        )
      ],
    );
  }
}
