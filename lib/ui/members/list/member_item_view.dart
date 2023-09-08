import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/AppComponents/app_colors.dart';
import 'package:g_tracker/AppComponents/images.dart';
import 'package:g_tracker/network/models/response/members/member.dart';

class MemberItemView extends StatelessWidget {
  final Member member;
  final VoidCallback onDeleteTap;
  final VoidCallback onListTap;

  const MemberItemView({
    Key? key,
    required this.member,
    required this.onDeleteTap,
    required this.onListTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onListTap,
      child: ListTile(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
        tileColor: AppColors.lightGreyColor,
        leading: Container(
          width: 40.h,
          height: 40.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: member.photo != null && member.photo!.isNotEmpty
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(10.r),
                  child: CachedNetworkImage(
                    imageUrl: member.photo!,
                    placeholder: (context, url) => const Center(
                        child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircularProgressIndicator(),
                    )),
                    fit: BoxFit.cover,
                  ))
              : Image.asset(
                  Images.userImage,
                  height: 40.h,
                  width: 40.h,
                  fit: BoxFit.fill,
                ),
        ),
        title: Row(
          children: [
            Expanded(child: Text(member.name ?? "")),

            member.status! != "Accepted" ?
            Text(member.status ?? "",style: TextStyle(
              fontSize: 10.sp,
              color: AppColors.redColor
            ),):const SizedBox(),
          ],
        ),
        trailing: GestureDetector(
          onTap: onDeleteTap,
          child: Image.asset(
            "assets/images/close.png",
            height: 20.h,
            width: 20.w,
          ),
        ),
      ),
    );
  }
}
