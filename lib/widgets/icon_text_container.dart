import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../AppComponents/text_styles.dart';

class IconTextContainer extends StatelessWidget {
  const IconTextContainer({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.onPress,
    this.color = const Color(0xFFE5E5E5),
  }) : super(key: key);
  final String imageUrl;
  final String title;
  final Color color;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 23.0.w),
            child: Container(
              height: 33.h,
              width: 33.w,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  imageUrl,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 14.w,
          ),
          Text(
            title,
            style: TextStyles.normalTextStyle,
          ),
        ],
      ),
    );
  }
}


