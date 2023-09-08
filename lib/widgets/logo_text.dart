import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../AppComponents/text_styles.dart';

class LogoText extends StatelessWidget {
  const LogoText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50.h,
        ),
        Center(
          child: Image.asset(
            "assets/images/logo.png",
            height: 104.h,
            width: 104.w,
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Spotti", style: TextStyles.signInTextStyle),
            SizedBox(
              width: 5.w,
            ),
            Container(
              height: 16.h,
              width: 1.6.w,
              color: Colors.black,
            ),
            SizedBox(
              width: 5.w,
            ),
            Text("Family Mapper", style: TextStyles.signInSmallTextStyle),
          ],
        ),
        SizedBox(
          height: 50.h,
        ),
      ],
    );
  }
}
