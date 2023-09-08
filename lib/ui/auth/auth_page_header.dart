import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthPageHeader extends StatelessWidget {
  final String title;
  final String? label;
  final String? stepImage;

  const AuthPageHeader({
    Key? key,
    required this.title,
    this.label,
    this.stepImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/logo.png",
          height: 135.h,
          width: 135.w,
        ),
        RichText(
          text: TextSpan(
              text: "G",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: "-Tracker",
                  style: Theme.of(context).textTheme.titleLarge,
                )
              ]),

          // heading,
          // style: styles,
        ),
        SizedBox(height: 40.h),
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(color: Theme.of(context).colorScheme.secondary),
        ),
        SizedBox(height: 25.h),
        // FIXME remove step image later
        if (stepImage != null) ...[
          Image.asset(stepImage!, width: 200.w),
          SizedBox(height: 25.h),
        ],
        if (label != null)
          Text(
            label!,
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.w500),
          ),
      ],
    );
  }
}
