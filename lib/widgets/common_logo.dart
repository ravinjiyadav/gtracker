import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/widgets/widgets.dart';

import '../AppComponents/text_styles.dart';

class CommonLogo extends StatelessWidget {
  const CommonLogo({
    Key? key,
    required this.title,
    required this.image2,
    required this.width,
  }) : super(key: key);

  final String title;
  final String image2;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/logo.png",
          height: 135.h,
          width: 135.w,
        ),
        const BigHeading3(
          alignment: Alignment.center,
          heading1: "G",
          headingsub: "-Tracker",
        ),
        SizedBox(
          height: 40.h,
        ),
        BigHeading2(
            alignment: Alignment.center,
            heading: title,
            styles: TextStyles.loginTextStyle),
        SizedBox(
          height: 25.h,
        ),
        // FIXME remove step image later
        Image.asset(
          image2,
          height: 27.h,
          width: width,
        ),
        SizedBox(
          height: 25.h,
        ),
      ],
    );
  }
}
