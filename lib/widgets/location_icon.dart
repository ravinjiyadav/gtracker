import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationIcon extends StatelessWidget {
  const LocationIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(
            right: 22.0.w,
          ),
          child: Container(
            height: 40.h,
            width: 40.w,
            decoration: BoxDecoration(
              color: const Color(0xFFFF4444),
              borderRadius: BorderRadius.circular(13.r),
            ),
            child: Center(
              child: Image.asset(
                "assets/images/locationicon.png",
              ),
            ),
          ),
        ),
      ],
    );
  }
}
