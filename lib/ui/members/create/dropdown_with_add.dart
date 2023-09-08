import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/AppComponents/text_styles.dart';

class DropdownWithAdd<T> extends StatelessWidget {
  final ValueNotifier<List<T>> dataNotifier;
  final VoidCallback onAddNewTap;
  final ValueChanged<T?> onChanged;
  final T? value;
  final T dummyAdd;
  final Widget addNewTile;
  final String Function(T) itemText;

  final String hint;

  const DropdownWithAdd({
    Key? key,
    required this.dataNotifier,
    required this.onAddNewTap,
    required this.onChanged,
    required this.addNewTile,
    required this.itemText,
    required this.dummyAdd,
    this.value,
    required this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      decoration: BoxDecoration(
          color: const Color(0xFFF4F5F7),
          borderRadius: BorderRadius.all(Radius.circular(25.r))),
      padding: EdgeInsets.only(left: 12.w, right: 12.w),
      child: Center(
        child: ValueListenableBuilder<List<T>>(
            valueListenable: dataNotifier,
            builder: (context, data, child) {
              final firstItem = DropdownMenuItem<T>(
                value: dummyAdd,
                child: addNewTile,
              );
              final items = data.map<DropdownMenuItem<T>>((T value) {
                return DropdownMenuItem<T>(
                  value: value,
                  child: Text(itemText(value)),
                );
              }).toList();
              return DropdownButton<T>(
                hint: Text(hint, style: TextStyles.hintTextStyle),
                style: TextStyles.black16px400,
                underline: Container(),
                isExpanded: true,
                value: value,
                icon: const Icon(Icons.keyboard_arrow_down),
                iconSize: 30.sp,
                onChanged: (value) {
                  if (value == dummyAdd) {
                    onAddNewTap.call();
                  } else {
                    onChanged.call(value);
                  }
                },
                items: [
                  firstItem,
                  ...items,
                ],
              );
            }),
      ),
    );
  }
}
