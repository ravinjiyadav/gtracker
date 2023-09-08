import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../AppComponents/text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.onPress,
      required this.title,
      this.color = const Color(0xFFFF4444)})
      : super(key: key);

  final VoidCallback onPress;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 52.h,
        width: 315.w,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyles.buttonTextStyle,
          ),
        ),
      ),
    );
  }
}

class CustomButton2 extends StatelessWidget {
  const CustomButton2(
      {Key? key,
      required this.onPress,
      required this.title,
      required this.height,
      required this.width,
      this.color = const Color(0xFFFF4444)})
      : super(key: key);

  final VoidCallback onPress;
  final String title;
  final Color color;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyles.buttonTextStyle,
          ),
        ),
      ),
    );
  }
}

class CustomButtonWithIcon extends StatelessWidget {
  const CustomButtonWithIcon(
      {Key? key,
      required this.onPress,
      required this.title,
      required this.height,
      required this.width,
      this.color = const Color(0xFFFF4444)})
      : super(key: key);

  final VoidCallback onPress;
  final String title;
  final Color color;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyles.buttonTextStyle,
            ),
            SizedBox(
              width: 7.w,
            ),
            Image.asset(
              "assets/images/plus.png",
              height: 20.h,
              width: 20.w,
            )
          ],
        ),
      ),
    );
  }
}
