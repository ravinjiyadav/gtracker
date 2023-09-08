import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key? key,
    this.color = const Color(0xFFC4C4C4),
    this.height = 1.2,
  }) : super(key: key);
  final Color color;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: 315.w,
      color: color,
    );
  }
}
