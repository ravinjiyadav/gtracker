import 'package:dcbase/dcbase.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/widgets/widgets.dart';
import '../../../AppComponents/routes_file.dart';
import '../../../AppComponents/text_styles.dart';
import '../../../widgets/custom_back_button.dart';
import '../controller/reset_controller.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseWidget(
        model: ResetScreenVm(),
        builder: (context,modal,child){
          return  SafeArea(
            child: SingleChildScrollView(
              child: Form(
                child: Stack(
                  children: [
                    Positioned(
                      left: 4.w,
                      top: 5.h,
                      child: const CustomBackButton(),
                    ),
                    Column(
                      children: [
                        const LogoText(),
                        BigHeading(
                          heading: "Reset Password",
                          styles: TextStyles.welcomeTextStyle,
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        CustomTextField(
                          child: TextFormField(
                            controller: modal.passwordController,
                            keyboardType: TextInputType.visiblePassword,
                            validator: (value) {
                              return modal.validatePassword(value!);
                            },
                            onSaved: (value) {
                              modal.password = value!;
                            },
                            obscureText: modal.isvisible,
                            decoration: InputDecoration(
                              hintText: "Password",
                              hintStyle: TextStyle(
                                fontSize: 17.sp,
                                fontWeight: FontWeight.w400,
                              ),
                              prefixIcon: const Icon(
                                CupertinoIcons.lock_fill,
                                color: Colors.black,
                              ),
                              border: InputBorder.none,
                              suffixIcon: GestureDetector(
                                onTap: (() {
                                  modal.isvisible =
                                  !modal.isvisible;
                                }),
                                child: ImageIcon(
                                  modal.isvisible
                                      ? const AssetImage(
                                      "assets/images/eye.png")
                                      : const AssetImage(
                                      "assets/images/noeye.png"),
                                  color: const Color(0xFF45454D),
                                ),
                              ),
                            ),
                            style: TextStyle(fontSize: 18.sp),
                            textAlign: TextAlign.start,
                          )
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        CustomTextField(
                          child: TextFormField(
                            controller: modal.confirmPasswordController,
                            keyboardType: TextInputType.visiblePassword,
                            // validator: (confirmPassword) {
                            //   if (confirmPassword !=
                            //       modal.passwordController!.text) {
                            //     return "Password do not match";
                            //   }
                            //   return null;
                            // },
                            onSaved: (confirmPassword) {
                              modal.confirmPassword = confirmPassword!;
                            },
                            obscureText: modal.isvisible,
                            decoration: InputDecoration(
                              hintText: "Confirm Password",
                              hintStyle: TextStyle(
                                fontSize: 17.sp,
                                fontWeight: FontWeight.w400,
                              ),
                              prefixIcon: const Icon(
                                CupertinoIcons.lock_fill,
                                color: Colors.black,
                              ),
                              border: InputBorder.none,
                            ),
                            style: TextStyle(fontSize: 18.sp),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        CustomButton(
                            onPress: () {
                              // final isValid = modal
                              //     .resetPasswordKey.currentState!
                              //     .validate();
                              // if (!isValid) {
                              //   Get.snackbar("Error", "Passwords are different");
                              // } else {
                              // modal.resetPasswordKey.currentState!.save();
                              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Password Saved")));
                            //  Navigator.pushNamed(context, RouteName.signInScreen);
                              // }
                            },
                            title: "Save Now !")
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
