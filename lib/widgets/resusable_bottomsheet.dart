import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/widgets/widgets.dart';

import '../AppComponents/app_colors.dart';
import '../AppComponents/text_styles.dart';

class ResuabeleBottomSheet extends StatelessWidget {
  const ResuabeleBottomSheet({
    Key? key,
    required this.title,
    required this.hint,
  }) : super(key: key);
  final String title;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 398.h,
      width: 375.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(26.r),
          topRight: Radius.circular(26.r),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.0.w),
            child: NormalText3(
              title: title,
              textStyle: TextStyles.userTextStyle,
            ),
          ),
          SizedBox(
            height: 22.h,
          ),
          Center(
            child: Container(
              width: 315.w,
              height: 150.h,
              margin: EdgeInsets.all(12.r),
              decoration: BoxDecoration(
                color: AppColors.textFieldColor,
                borderRadius: BorderRadius.circular(28.r),
              ),
              child: TextFormField(
                maxLines: 6,
                style: TextStyles.inputTextStyle,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20.w, top: 20.h),
                    border: InputBorder.none,
                    hintText: hint,
                    hintStyle: TextStyles.hintTextStyle1),
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Center(
            child: CustomButton(
              onPress: () {},
              title: "Send",
              color: AppColors.themeColor,
            ),
          )
        ],
      ),
    );
  }
}
