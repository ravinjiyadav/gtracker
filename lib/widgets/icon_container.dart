import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconContainer extends StatelessWidget {
  const IconContainer({
    Key? key,
    this.height = 30,
    this.width = 40,
    required this.image,
    this.backgroundColor = Colors.white,
    this.iconColor = Colors.white,
  }) : super(key: key);
  final double height;
  final double width;
  final String image;
  final Color backgroundColor;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.0.w),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Padding(
          padding: EdgeInsets.all(7.0.r),
          child: ImageIcon(
            AssetImage(image),
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
