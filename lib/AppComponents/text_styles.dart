import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/AppComponents/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  //splash page text styles
  static final splashTextStyle = GoogleFonts.prozaLibre(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static final splashText2Style = GoogleFonts.prozaLibre(
    fontSize: 30.sp,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );
  //App bar text styles

  static final normalHeadingText1Style = GoogleFonts.prozaLibre(
    fontSize: 14.sp,
    fontWeight: FontWeight.bold,
  );
  static final normalHeadingText3Style = GoogleFonts.prozaLibre(
    fontSize: 14.sp,
  );
  //HInt Text Style
  static final hintTextStyle1 = GoogleFonts.prozaLibre(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: const Color(0xFFA4A4A8),
  );

  static final dailyReportTextStyle = GoogleFonts.prozaLibre(
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  //Input Text Style
  static final inputTextStyle = GoogleFonts.prozaLibre(
    fontSize: 17.sp,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );
  // Login Page TextStyles
  static final mainTitleTextStyle = GoogleFonts.prozaLibre(
      fontSize: 20.sp,
      fontWeight: FontWeight.w700,
      color: const Color(0xFF000000));
  static final mainTitleTextStyle2 = GoogleFonts.prozaLibre(
      fontSize: 18.sp,
      fontWeight: FontWeight.w400,
      color: const Color(0xFF000000));
  static final loginTextStyle = GoogleFonts.prozaLibre(
    fontSize: 22.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.themeColor,
  );

  // didn't get otp textStyle
  static final didNotGetOTPText1Style = GoogleFonts.prozaLibre(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
  );

  static final black14px400 = GoogleFonts.prozaLibre(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );
  static final black15px400 = GoogleFonts.prozaLibre(
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
  );
  static final black14px700 = GoogleFonts.prozaLibre(
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
  );
  static final locationHistoryStyle = GoogleFonts.prozaLibre(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.buttonColor,
  );
  static final signUpTextStyle = GoogleFonts.prozaLibre(
    fontStyle: FontStyle.normal,
    fontSize: 15.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.buttonColor,
  );
  static final membersOfCircleText2Style = GoogleFonts.prozaLibre(
      fontSize: 15.sp,
      fontWeight: FontWeight.bold,
      color: const Color(0xFF5A4873));

  static final appBarText1Style = GoogleFonts.prozaLibre(
    fontSize: 22.sp,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );
  static final themeAppBar = GoogleFonts.prozaLibre(
    fontSize: 22.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.themeColor,
  );
  static final appbar2TextStyle = GoogleFonts.prozaLibre(
    fontSize: 22.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.themeColor,
  );
  static final appBarText2Style = GoogleFonts.prozaLibre(
    fontSize: 22.sp,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );
  static final onBoardingTextStyle = GoogleFonts.prozaLibre(
    fontSize: 24.sp,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );
  static final onBoardingSubTextStyle = GoogleFonts.prozaLibre(
    fontSize: 16.sp,
    fontWeight: FontWeight.w300,
    color: Colors.white,
  );
  static final buttonTextStyle = GoogleFonts.prozaLibre(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );
  static final skipButtonTextStyle = GoogleFonts.prozaLibre(
    fontSize: 17.sp,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );
  //Sign In Page Text Styles
  static final signInTextStyle = GoogleFonts.prozaLibre(
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.themeColor,
  );
  static final signInSmallTextStyle = GoogleFonts.prozaLibre(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.themeColor,
  );
  static final welcomeTextStyle = GoogleFonts.prozaLibre(
    fontStyle: FontStyle.normal,
    fontSize: 22.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.bigTextColor,
  );
  static final rememberTextStyle = GoogleFonts.prozaLibre(
    fontStyle: FontStyle.normal,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.rememberColor,
  );
  static final forgetTextStyle = GoogleFonts.prozaLibre(
    fontStyle: FontStyle.normal,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: const Color(0xFFFF4444),
  );
  static final donNotHaveTextStyle = GoogleFonts.prozaLibre(
    fontStyle: FontStyle.normal,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.rememberColor,
  );

  static final hintTextStyle = TextStyle(
    fontSize: 17.sp,
    fontWeight: FontWeight.w400,
    color: const Color(0xFFA4A4A8),
  );

  //Forgot password Text Styles
  static final normalTextStyle = GoogleFonts.prozaLibre(
    fontStyle: FontStyle.normal,
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.rememberColor,
  );
  static final normalDrawerStyle = GoogleFonts.prozaLibre(
    fontStyle: FontStyle.normal,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );
  static final normalTextStyle2 = GoogleFonts.prozaLibre(
    fontStyle: FontStyle.normal,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    // letterSpacing: 6,
    color: AppColors.greyColor,
  );
  static final normalTextStyle4 = GoogleFonts.prozaLibre(
    fontStyle: FontStyle.normal,
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );
  static final normalTextStyle3 = GoogleFonts.prozaLibre(
    fontStyle: FontStyle.normal,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );
  //Home Page
  static final userTextStyle = GoogleFonts.prozaLibre(
    fontStyle: FontStyle.normal,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.themeColor,
  );
  static final drawerTExtStyle = GoogleFonts.prozaLibre(
    fontStyle: FontStyle.normal,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );

  static final userSubTextStyle = GoogleFonts.prozaLibre(
    fontStyle: FontStyle.normal,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.buttonColor,
  );
  static final white12px400 = GoogleFonts.prozaLibre(
    fontStyle: FontStyle.normal,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );
  static final white16px400 = GoogleFonts.prozaLibre(
    fontStyle: FontStyle.normal,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );
  static final white10px500 = GoogleFonts.prozaLibre(
    fontStyle: FontStyle.normal,
    fontSize: 10.sp,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );
  static final white8px500 = GoogleFonts.prozaLibre(
    fontStyle: FontStyle.normal,
    fontSize: 8.sp,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );
  static final black12px500 = GoogleFonts.prozaLibre(
    fontStyle: FontStyle.normal,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );
  static final black11px500 = GoogleFonts.prozaLibre(
    fontStyle: FontStyle.normal,
    fontSize: 11.sp,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );
  static final black10px500 = GoogleFonts.prozaLibre(
    fontStyle: FontStyle.normal,
    fontSize: 10.sp,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );
  static final grey8px400 = GoogleFonts.prozaLibre(
    fontStyle: FontStyle.normal,
    fontSize: 8.sp,
    fontWeight: FontWeight.w400,
    color: const Color(0xFfACB9BF),
  );
  static final black8px400 = GoogleFonts.prozaLibre(
    fontStyle: FontStyle.normal,
    fontSize: 8.sp,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );
  static final grey10px400 = GoogleFonts.prozaLibre(
    fontStyle: FontStyle.normal,
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
    color: const Color(0xFFACB9BF),
  );
  static final grey14px400 = GoogleFonts.prozaLibre(
    fontStyle: FontStyle.normal,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: const Color(0xFFACB9BF),
  );
  static final grey14px500 = GoogleFonts.prozaLibre(
    fontStyle: FontStyle.normal,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: const Color(0xFFACB9BF),
  );
  static final grey16px500 = GoogleFonts.prozaLibre(
    fontStyle: FontStyle.normal,
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
    color: const Color(0xFFACB9BF),
  );
  static final black16px700 = GoogleFonts.prozaLibre(
    fontStyle: FontStyle.normal,
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );
  static final black16px500 = GoogleFonts.prozaLibre(
    fontStyle: FontStyle.normal,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );
  static final black16px400 = GoogleFonts.prozaLibre(
    fontStyle: FontStyle.normal,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );
  static final theme16px700 = GoogleFonts.prozaLibre(
    fontStyle: FontStyle.normal,
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.themeColor,
  );
  static final black20px700 = GoogleFonts.prozaLibre(
    fontStyle: FontStyle.normal,
    fontSize: 20.sp,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );
  static final theme19px700 = GoogleFonts.prozaLibre(
    fontStyle: FontStyle.normal,
    fontSize: 19.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.themeColor,
  );
  static final theme20px700 = GoogleFonts.prozaLibre(
    fontStyle: FontStyle.normal,
    fontSize: 20.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.themeColor,
  );
  static final grey12px400 = GoogleFonts.prozaLibre(
    fontStyle: FontStyle.normal,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: const Color(0xFF6C6F73),
  );
  static final orange12px400 = GoogleFonts.prozaLibre(
    fontStyle: FontStyle.normal,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.buttonColor,
  );
  static final theme9px400 = GoogleFonts.prozaLibre(
    fontStyle: FontStyle.normal,
    fontSize: 9.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.themeColor,
  );


  static final prozaLibre500 = GoogleFonts.prozaLibre(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
  );

  static final prozaLibre400 = GoogleFonts.prozaLibre(
    fontWeight: FontWeight.w400,
  );

  static final prozaLibre700 = GoogleFonts.prozaLibre(
    fontWeight: FontWeight.w700,
  );

  static final prozaLibre600 = GoogleFonts.prozaLibre(
    fontWeight: FontWeight.w600,
  );


}
