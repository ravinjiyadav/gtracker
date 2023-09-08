import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/AppComponents/text_size.dart';
import 'package:g_tracker/AppComponents/text_styles.dart';

class SettingListView extends StatelessWidget {
  final String imageUrl;
  final String title;
  final VoidCallback onPress;
  final double height;
  final double width;

  const SettingListView({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.onPress,
    this.height = 33,
    this.width = 33,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 7.h),
        child: Row(
          children: [
            SizedBox(
              width: 20.w,
            ),
            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Padding(
                padding: EdgeInsets.all(5.r),
                child: Image.asset(
                  imageUrl,
                ),
              ),
            ),
            SizedBox(
              width: 5.w,
            ),
            Text(
              title,
              style: TextStyles.prozaLibre400.copyWith(
                fontSize: TextSizes.text14,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
