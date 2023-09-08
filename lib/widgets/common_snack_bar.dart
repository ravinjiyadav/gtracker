import 'package:flutter/material.dart';

SnackBar customSnackBar(String message) {
  return SnackBar(
    content: Text(message),
    action: SnackBarAction(
      label: '',
      onPressed: () {},
    ),
  );
}
