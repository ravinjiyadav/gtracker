import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../AppComponents/text_styles.dart';

class UserCardDrawer extends StatelessWidget {
  const UserCardDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        height: 68.h,
        decoration: BoxDecoration(
          color: const Color(0xFFF5F5F5),
          borderRadius: BorderRadius.circular(13.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  width: 42.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Image.asset(
                    "assets/images/user.png",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Alexender",
                      style: TextStyles.userTextStyle,
                    ),
                    Text(
                      "My Account",
                      style: TextStyles.userSubTextStyle,
                    )
                  ],
                )
              ],
            ),
            const Icon(CupertinoIcons.forward),
          ],
        ),
      ),
    );
  }
}
