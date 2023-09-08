import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/AppComponents/app_colors.dart';
import 'package:g_tracker/AppComponents/text_styles.dart';

class SimpleTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final Widget? suffixWidget;
  final bool? readOnly;
  final GestureTapCallback? onTap;

  const SimpleTextField({
    Key? key,
    required this.controller,
    required this.hint,
     this.suffixWidget,
    this.onTap,
    this.readOnly,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: TextFormField(
        readOnly: readOnly != null ? true : false,
        controller: controller,
        onTap: onTap,
        textAlign: TextAlign.start,
        keyboardType: TextInputType.text,
        style: TextStyles.black16px400,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 12.w, right: 12.w),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.r),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.r),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.r),
              borderSide: BorderSide.none,
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.r),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: AppColors.textFieldColor,
            hintText: hint,
            hintStyle: TextStyles.hintTextStyle,
            suffixIcon: suffixWidget),
      ),
    );
  }
}
