import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../AppComponents/text_styles.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fitWidth,
          image: AssetImage("assets/images/backgroundc.png"),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 90.h,
          ),
          Image.asset(
            "assets/images/frame.png",
            height: 340.h,
            width: 301.w,
          ),
          SizedBox(
            height: 90.h,
          ),
          Text(
            "Circles",
            style: TextStyles.onBoardingTextStyle,
          ),
          SizedBox(
            height: 17.h,
          ),
          Text(
            """Use "Circles" to add more \n private group (up to 10 members)""",
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
