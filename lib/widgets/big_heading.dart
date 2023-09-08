import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/AppComponents/text_styles.dart';

class BigHeading extends StatelessWidget {
  const BigHeading(
      {Key? key,
      required this.heading,
      required this.styles,
      this.alignment = Alignment.centerLeft})
      : super(key: key);
  final String heading;
  final Alignment alignment;
  final TextStyle styles;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      padding: EdgeInsets.only(left: 26.w),
      child: Text(
        heading,
        style: styles,
      ),
    );
  }
}

class BigHeading2 extends StatelessWidget {
  const BigHeading2(
      {Key? key,
      required this.heading,
      required this.styles,
      this.alignment = Alignment.centerLeft})
      : super(key: key);
  final String heading;
  final Alignment alignment;
  final TextStyle styles;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        heading,
        style: styles,
      ),
    );
  }
}

class BigHeading3 extends StatelessWidget {
  const BigHeading3(
      {Key? key,
      required this.heading1,
      required this.headingsub,
      // required this.styles,
      this.alignment = Alignment.centerLeft})
      : super(key: key);
  final String heading1;
  final String headingsub;
  final Alignment alignment;
  // final TextStyle styles;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: RichText(
        text: TextSpan(
            text: heading1,
            style: TextStyles.mainTitleTextStyle,
            children: [
              TextSpan(
                text: headingsub,
                style: TextStyles.mainTitleTextStyle2,
              )
            ]),

        // heading,
        // style: styles,
      ),
    );
  }
}

class BigHeading4 extends StatelessWidget {
  const BigHeading4(
      {Key? key,
      required this.heading1,
      required this.headingsub,
      // required this.styles,
      this.alignment = Alignment.centerLeft})
      : super(key: key);
  final String heading1;
  final String headingsub;
  final Alignment alignment;
  // final TextStyle styles;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 29.h),
      alignment: alignment,
      child: RichText(
        text:
            TextSpan(text: heading1, style: TextStyles.theme16px700, children: [
          TextSpan(
            text: headingsub,
            style: TextStyles.normalHeadingText3Style,
          )
        ]),

        // heading,
        // style: styles,
      ),
    );
  }
}
