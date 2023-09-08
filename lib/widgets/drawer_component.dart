import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/AppComponents/text_size.dart';

import '../AppComponents/text_styles.dart';

class DrawerComponent extends StatelessWidget {
  const DrawerComponent({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.onpress,
    this.color = Colors.red,
    this.backgroundColor = Colors.white,
  }) : super(key: key);

  final String imageUrl;
  final String title;
  final Color color;
  final Color backgroundColor;
  final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: InkWell(
        onTap: onpress,
        child: Padding(
          padding:  EdgeInsets.symmetric(vertical: 13.5.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 15.w,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.circular(10.r)),
                    child: ImageIcon(
                      AssetImage(
                        imageUrl,
                      ),
                      color: color,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
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
              const Icon(CupertinoIcons.forward),
            ],
          ),
        ),
      ),
    );
  }
}
