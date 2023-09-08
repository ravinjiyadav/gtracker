import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/widgets/widgets.dart';

import '../AppComponents/app_colors.dart';
import '../AppComponents/text_styles.dart';

class PlacesComponent extends StatelessWidget {
  const PlacesComponent({
    Key? key,
    required this.firstImage,
    required this.title,
    required this.subTitle,
    required this.onPress,
  }) : super(key: key);
  final String firstImage;
  final VoidCallback onPress;
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconContainer(
              height: 33.h,
              width: 33.w,
              image: firstImage,
              backgroundColor: AppColors.themeColor,
            ),
            SizedBox(
              width: 10.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BigHeading2(
                  heading: title,
                  styles: TextStyles.theme16px700,
                ),
                NormalText3(
                  title: subTitle,
                  textStyle: TextStyles.normalTextStyle2,
                )
              ],
            )
          ],
        ),
        GestureDetector(
          onTap: onPress,
          child: Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: IconContainer(
              height: 33.h,
              width: 33.w,
              image: "assets/images/editicon.png",
              iconColor: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}

class PlacesComponent2 extends StatelessWidget {
  const PlacesComponent2({
    Key? key,
    required this.firstImage,
    required this.title,
    required this.subTitle,
  }) : super(key: key);
  final String firstImage;

  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.lightGreyColor,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconContainer(
                height: 33.h,
                width: 33.w,
                image: firstImage,
                backgroundColor: AppColors.themeColor,
              ),
              SizedBox(
                width: 10.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigHeading2(
                    heading: title,
                    styles: TextStyles.theme16px700,
                  ),
                  NormalText3(
                    title: subTitle,
                    textStyle: TextStyles.normalTextStyle3,
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
