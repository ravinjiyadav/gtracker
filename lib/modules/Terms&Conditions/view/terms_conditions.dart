import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:g_tracker/AppComponents/app_colors.dart';
import 'package:g_tracker/widgets/widgets.dart';


class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.themeColor,
      drawer: const CustomDrawer(),
      appBar: customAppbar(
        "Terms And Condition",
        () {},
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 30.h),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(26.r),
              topRight: Radius.circular(26.r),
            ),
          ),
        ),
      ),
    );
  }
}
