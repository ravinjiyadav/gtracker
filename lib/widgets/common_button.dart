import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/AppComponents/text_styles.dart';
//r
class CommonButton extends StatelessWidget {
  const CommonButton(
      {Key? key,
        required this.onPress,
        required this.title,
        this.color = const Color(0xFFFF4444)})
      : super(key: key);

  final VoidCallback onPress;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 52.h,
       // width: 315.w,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyles.buttonTextStyle,
          ),
        ),
      ),
    );
  }
}
