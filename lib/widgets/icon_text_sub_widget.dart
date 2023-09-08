import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/widgets/widgets.dart';

import '../AppComponents/app_colors.dart';
import '../AppComponents/text_styles.dart';

class IconTextSubWidget extends StatelessWidget {
  const IconTextSubWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.subTitle,
    this.backgroundColor = AppColors.themeColor,
  }) : super(key: key);
  final String image;
  final String title;
  final String subTitle;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85.h,
      width: 150.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: backgroundColor,
      ),
      padding: EdgeInsets.all(10.r),
      child: Flexible(
        fit: FlexFit.tight,
        flex: 1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 40.h,
              width: 30.w,
              decoration: BoxDecoration(
                color: const Color(0xFFECE4F0),
                borderRadius: BorderRadius.circular(14.r),
              ),
              child: Image.asset(
                image,
                alignment: Alignment.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(4.0.r),
              child: Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NormalText4(
                      title: title,
                      textStyle: TextStyles.onBoardingSubTextStyle,
                    ),
                    NormalText3(
                      title: subTitle,
                      textStyle: TextStyles.normalTextStyle4,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
