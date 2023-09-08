import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/AppComponents/app_colors.dart';
import 'package:g_tracker/network/models/response/device/trackable_device.dart';

class DeviceItemView extends StatelessWidget {
  final TrackableDevice device;
  final VoidCallback onDeleteTap;

  const DeviceItemView({
    Key? key,
    required this.device,
    required this.onDeleteTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 315.w,
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: AppColors.lightGreyColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(device.imei),
          GestureDetector(
            onTap: onDeleteTap,
            child: Image.asset(
              "assets/images/close.png",
              height: 20.h,
              width: 20.w,
            ),
          ),
        ],
      ),
    );
  }
}
