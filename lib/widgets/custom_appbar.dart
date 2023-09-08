import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/AppComponents/routes_file.dart';

import '../AppComponents/app_colors.dart';
import '../AppComponents/text_styles.dart';

PreferredSizeWidget customAppbar(String title, VoidCallback onPress) => AppBar(
      elevation: 0,
      centerTitle: true,
      title: Text(
        title,
        style: TextStyles.appBarText2Style,
      ),
      backgroundColor: AppColors.themeColor,
      leading: Builder(builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(15.0),
          child: InkWell(
            onTap: onPress,
            child: ImageIcon(
              const AssetImage(
                "assets/images/back.png",
              ),
              size: 10.r,
            ),
          ),
        );
      }),
    );
PreferredSizeWidget customAppbarWithSkip(
        BuildContext context, String title, VoidCallback onPress) =>
    AppBar(
      elevation: 0,
      centerTitle: true,
      title: Text(
        title,
        style: TextStyles.appBarText2Style,
      ),
      backgroundColor: AppColors.themeColor,
      leading: Padding(
        padding: const EdgeInsets.all(15.0),
        child: InkWell(
          onTap: onPress,
          child: ImageIcon(
            const AssetImage(
              "assets/images/back.png",
            ),
            size: 10.r,
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, RouteName.dashBoardScreen);
          },
          child: Text(
            "Skip",
            style: TextStyles.white16px400,
          ),
        ),
      ],
    );
PreferredSizeWidget customAppbar2(BuildContext context, String title,
        VoidCallback onPress, TextStyle style) =>
    AppBar(
      elevation: 0,
      centerTitle: true,
      title: Text(
        title,
        style: style,
      ),
      backgroundColor: Colors.white,
      leading: Padding(
        padding: EdgeInsets.all(17.0.r),
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: ImageIcon(
            const AssetImage(
              "assets/images/back2.png",
            ),
            color: Colors.black,
            size: 8.r,
          ),
        ),
      ),
    );
PreferredSizeWidget customAppbar2WithSkip(
        BuildContext context, String title, TextStyle style) =>
    AppBar(
      elevation: 0,
      centerTitle: true,
      title: Text(
        title,
        style: style,
      ),
      backgroundColor: Colors.white,
      leading: Padding(
        padding: EdgeInsets.all(17.0.r),
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: EdgeInsets.all(2.r),
            child: ImageIcon(
              const AssetImage(
                "assets/images/back2.png",
              ),
              color: Colors.black,
              size: 8.r,
            ),
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, RouteName.dashBoardScreen);
          },
          child: Text(
            "Skip",
            style: TextStyles.black16px400,
          ),
        ),
      ],
    );
