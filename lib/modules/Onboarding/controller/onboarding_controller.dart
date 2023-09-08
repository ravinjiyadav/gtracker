import 'package:dcbase/dcbase.dart';
import 'package:flutter/material.dart';

import 'package:g_tracker/AppComponents/routes_file.dart';

import '../model/onboarding_model.dart';

class OnBoardingScreenVm extends BaseViewModel {
  var onBoardingData = OnboardingData.onbaording;
  final PageController pageController = PageController();

  var selectedIndex = 0;

  // ignore: unrelated_type_equality_checks
  bool get isLastPage => selectedIndex == 3;

  forwardAction(BuildContext context) {
    if (isLastPage) {
      Navigator.pushNamed(context, RouteName.loginScreen);
    } else {
      pageController.nextPage(
          duration: const Duration(microseconds: 3000), curve: Curves.ease);
    }
  }

  setPageIndex(int index) {
    selectedIndex = index;
  }

  navigateToLogin(BuildContext context) {
    if (true) {
      Navigator.pushNamed(context, RouteName.loginScreen);
    }
  }
}
