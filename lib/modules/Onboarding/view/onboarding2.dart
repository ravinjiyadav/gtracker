import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../AppComponents/text_styles.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fitWidth,
          image: AssetImage("assets/images/backgroundp.png"),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 120.h,
          ),

          Image.asset(
            "assets/images/notification.png",
            width: 299.w,
            height: 266.h,
          ),
          // ),
          SizedBox(
            height: 135.h,
          ),
          Text(
            "Places",
            style: TextStyles.onBoardingTextStyle,
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            """Add "Places" and get notified when \n  members arrive or leave """,
            textAlign: TextAlign.center,
            style: TextStyles.onBoardingSubTextStyle,
          ),
          SizedBox(
            height: 18.h,
          ),
        ],
      ),
    );
  }
}
