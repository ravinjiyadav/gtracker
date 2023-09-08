import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../AppComponents/text_styles.dart';

class Onboarding4 extends StatelessWidget {
  const Onboarding4({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fitWidth,
          image: AssetImage("assets/images/backgroundn.png"),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 100.h,
          ),
          Image.asset(
            "assets/images/frame4.png",
            height: 282.h,
            width: 315.w,
          ),
          SizedBox(
            height: 135.h,
          ),
          Text(
            "Get Notification",
            style: TextStyles.onBoardingTextStyle,
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            """It is a long established fact that a reader \n will be distracted by the readable.""",
            textAlign: TextAlign.center,
            style: TextStyles.onBoardingSubTextStyle,
          ),
          SizedBox(
            height: 17.h,
          ),
        ],
      ),
    );
  }
}
