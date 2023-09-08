import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/AppComponents/text_size.dart';

import '../AppComponents/text_styles.dart';

class NormalText extends StatelessWidget {
  const NormalText({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Text(
        title,
        style: TextStyles.prozaLibre400.copyWith(
          fontSize: TextSizes.text14,
          color: Colors.black,
        ),
      ),
    );
  }
}

class NormalText2 extends StatelessWidget {
  const NormalText2({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25.0.w),
      child: Text(
        title,
        style: TextStyles.normalTextStyle2,
      ),
    );
  }
}

class NormalText3 extends StatelessWidget {
  const NormalText3({
    Key? key,
    required this.title,
    required this.textStyle,
  }) : super(key: key);
  final String title;
  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5.0.h),
      child: Text(
        title,
        style: textStyle,
      ),
    );
  }
}

class NormalText4 extends StatelessWidget {
  const NormalText4({
    Key? key,
    required this.title,
    required this.textStyle,
  }) : super(key: key);
  final String title;
  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: textStyle,
    );
  }
}
