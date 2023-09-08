import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../AppComponents/text_styles.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({
    Key? key,
    // required this.onPress,
    required this.middleImage,
    required this.title,
    required this.subTitle,
    required this.buttonName,
    required this.backgroundImage,
  }) : super(key: key);
  // final VoidCallback onPress;
  final String middleImage;
  final String title;
  final String subTitle;
  final String buttonName;
  final String backgroundImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fitWidth,
          image: AssetImage(backgroundImage),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 70.h,
          ),
          Image.asset(
            middleImage, alignment: Alignment.centerLeft,
            // fit: BoxFit.contain,
            width: 399.w,
            height: 450.h,
          ),
          Text(
            title,
            style: TextStyles.onBoardingTextStyle,
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            subTitle,
            textAlign: TextAlign.center,
            style: TextStyles.onBoardingSubTextStyle,
          ),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }
}
