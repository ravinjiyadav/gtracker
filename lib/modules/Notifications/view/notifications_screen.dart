import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:g_tracker/AppComponents/app_colors.dart';
import '../../../AppComponents/text_styles.dart';
import '../../../widgets/widgets.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.themeColor,
      drawer: const CustomDrawer(),
      appBar: customAppbar(
        "Notification",
        () {},
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 30.0.h),
        child: Container(
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
                height: 30.h,
              ),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: ((context, index) => SizedBox(
                        height: 10.h,
                      )),
                  itemCount: 20,
                  itemBuilder: (context, index) => Center(
                    child: Container(
                      height: 50.h,
                      width: 315.w,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF5F5F5),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            "assets/images/user.png",
                            height: 35.h,
                            width: 35.w,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Ponomarenko, Tivali Fruenzyenski ",
                                style: TextStyles.black10px500,
                              ),
                              Text(
                                "Ponomarenko, Tivali Fruenzyenski ",
                                style: TextStyles.grey8px400,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Image.asset(
                            "assets/images/notificationsBell.png",
                            width: 25.w,
                            height: 20.h,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
