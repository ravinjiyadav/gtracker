// ignore_for_file: avoid_print

import 'dart:io';
import 'package:dcbase/dcbase.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class EditProfileScreenVm extends BaseViewModel {
  File? pickedFile;

  var isProfilePathSet = false;
  var profilePicPath = '';

  void setProfileImagePath(String path) {
    profilePicPath = path;
    isProfilePathSet = true;
  }

  ImagePicker imagePicker = ImagePicker();

  Future<void> pickImage(ImageSource imageSource, BuildContext context) async {
    final pickedImage = await imagePicker.pickImage(source: imageSource);
    pickedFile = File(pickedImage!.path);
    setProfileImagePath(pickedFile!.path);
    print(pickedFile);
    Navigator.pop(context);
  }
}
