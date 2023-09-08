import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Padding(
        padding: EdgeInsets.all(20.0.r),
        child: Image.asset(
          "assets/images/back2.png",
          height: 22.h,
          width: 22.w,
        ),
      ),
    );
  }
}

class CustomBackButton2 extends StatelessWidget {
  const CustomBackButton2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          CupertinoIcons.back,
          size: 34.r,
        )

        //  Image.asset(
        //   "assets/images/back2.png",
        //   height: 25.h,
        //   width: 25.w,
        // ),
        );
  }
}
