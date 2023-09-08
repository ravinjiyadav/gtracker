import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/AppComponents/routes_file.dart';
import 'package:g_tracker/extensions/context_extensions.dart';
import 'package:g_tracker/ui/auth/auth_page_header.dart';
import 'package:g_tracker/localStore/local_cache.dart';

class UserNameScreen extends StatefulWidget {
  const UserNameScreen({Key? key}) : super(key: key);

  @override
  State<UserNameScreen> createState() => _UserNameScreenState();
}

class _UserNameScreenState extends State<UserNameScreen> {
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          const AuthPageHeader(
            title: "Setup Your Account",
            stepImage: "assets/images/bigwiz3.png",
            label: "Enter Your Details",
          ),
          SizedBox(height: 16.h),
          Center(
            child: Container(
              alignment: Alignment.center,
              width: 315.w,
              height: 65.h,
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: nameController,
                onSaved: (name) {
                  // setupController3.name = name!;
                },
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 25.w),
                  border: InputBorder.none,
                  hintText: "Enter Your Full Name",
                ),
              ),
            ),
          ),
          SizedBox(height: 16.h),
          FractionallySizedBox(
            widthFactor: 0.9,
            child: ElevatedButton(
              style:
                  ElevatedButton.styleFrom(minimumSize: Size.fromHeight(56.h)),
              onPressed: () {
                if (nameController.text.isNotEmpty) {
                  FocusManager.instance.primaryFocus?.unfocus();
                  LocalCache.enteredName = nameController.text;
                  Navigator.pushNamed(context, RouteName.setMpinScreen);
                } else {
                  context.showSnackBar(message: 'Please Enter Your Full Name.');
                }
              },
              child: const Text("Next"),
            ),
          ),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }
}
