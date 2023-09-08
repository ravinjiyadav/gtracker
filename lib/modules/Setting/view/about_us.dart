import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/AppComponents/app_colors.dart';
import 'package:g_tracker/AppComponents/text_styles.dart';
import 'package:g_tracker/widgets/widgets.dart';

class AboutUs extends StatelessWidget {
  static const routeName = '/aboutus';
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar:
          customAppbar2(context, "About", () {}, TextStyles.appbar2TextStyle),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30.h,
          ),
          Center(
            child: SizedBox(
              height: 48.h,
              width: 315.w,
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                style: TextStyles.theme16px700,
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Center(
            child: SizedBox(
              height: 144.h,
              width: 315.w,
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type book.",
                style: TextStyles.normalTextStyle2,
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.w),
            child: Container(
              alignment: Alignment.topLeft,
              height: 24.h,
              width: 144.w,
              child: Text(
                "Why do we use it? ",
                style: TextStyles.theme16px700,
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          const WhyDoWeUseIt(
            title: "1.  Lorem Ipsum is simply dummy text",
          ),
          const WhyDoWeUseIt(
            title: "2.  Lorem Ipsum is simply dummy text",
          ),
          const WhyDoWeUseIt(
            title: "3.  Lorem Ipsum is simply dummy text",
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.0.w),
            child: SizedBox(
              height: 24.h,
              width: 315.w,
              child: Text(
                "The printing and typesetting industry.",
                style: TextStyles.theme16px700,
              ),
            ),
          ),
          Center(
            child: SizedBox(
              height: 48.h,
              width: 315.w,
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                style: TextStyles.normalTextStyle2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WhyDoWeUseIt extends StatelessWidget {
  const WhyDoWeUseIt({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.w),
      child: SizedBox(
        height: 24.h,
        width: 251.w,
        child: Text(
          title,
          style: TextStyles.normalTextStyle2,
        ),
      ),
    );
  }
}
