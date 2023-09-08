import 'package:dcbase/dcbase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/network/models/request/user/update_user_detail_request.dart';
import 'package:g_tracker/network/network_provider.dart';
import 'package:g_tracker/widgets/api_progress_aware_view.dart';
import 'package:g_tracker/widgets/custom_button.dart';
import 'package:g_tracker/widgets/simple_text_field.dart';
import 'package:g_tracker/AppComponents/app_colors.dart' as ac;

import 'update_profile_screen_vm.dart';

class UpdateProfileScreen extends ConsumerStatefulWidget {
  const UpdateProfileScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<UpdateProfileScreen> createState() =>
      _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends ConsumerState<UpdateProfileScreen> {
  late final UpdateProfileScreenVm updateProfileScreenVm;

  TextEditingController nameController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Update Profile"),
        centerTitle: true,
      ),
      body: BaseWidget<UpdateProfileScreenVm>(
        model: UpdateProfileScreenVm(ref.read(userRepositoryProvider),ref.watch(userBoxProvider)),
        onModelReady: (model) {
          updateProfileScreenVm = model;
          final userBox = ref.watch(userBoxProvider);
          nameController.text = userBox.user()?.name ?? "";
        },
        builder: (context, model, child) {
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 30.w, right: 30.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 48.h,
                  ),
                  SimpleTextField(
                    hint: "Enter Your Full Name",
                    controller: nameController,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  ProgressAwareView(
                    screenState: model.screenStateNotifier,
                    child: CustomButton(
                      onPress: () async {
                        FocusManager.instance.primaryFocus?.unfocus();

                        if (nameController.text.isNotEmpty) {
                          model.updateUser(
                              request: UpdateUserDetailRequest(
                                  name: nameController.text),
                              onSuccess: (response) {
                                context.showSnackBar(message: response.message);

                                Navigator.pop(context);
                              },
                              onFailure: (val) {
                                context.showSnackBar(message: val);
                              });
                        } else {
                          context.showSnackBar(
                              message: "Please Enter Your Name.");
                        }
                      },
                      title: "Update",
                      color: ac.AppColors.themeColor,
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
