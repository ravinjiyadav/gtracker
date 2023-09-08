import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({Key? key, required this.onPress}) : super(key: key);
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          onTap: onPress,
          // onTap: () =>
          // homeController.key.currentState!.openDrawer(),
          child: Container(
            height: 40.h,
            width: 40.w,
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Image.asset(
              "assets/images/menubar.png",
            ),
          ),
        ),
        Container(
          height: 45.h,
          width: 230.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.r),
          ),
        ),
        Container(
          height: 40.h,
          width: 40.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Image.asset(
            "assets/images/notificationbar2.png",
          ),
        ),
      ],
    );
  }
}

PreferredSizeWidget customHeaderBar(VoidCallback onPress, Color color) =>
    AppBar(
      backgroundColor: color,
      title: Container(
        height: 45.h,
        width: 230.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.r),
        ),
      ),
      leading: InkWell(
        onTap: onPress,
        // onTap: () =>
        // homeController.key.currentState!.openDrawer(),
        child: Container(
          height: 40.h,
          width: 40.w,
          decoration: BoxDecoration(
            color: Colors.redAccent,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Image.asset(
            "assets/images/menubar.png",
          ),
        ),
      ),
      actions: [
        Container(
          height: 40.h,
          width: 40.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Image.asset(
            "assets/images/notificationbar2.png",
          ),
        ),
      ],
    );
