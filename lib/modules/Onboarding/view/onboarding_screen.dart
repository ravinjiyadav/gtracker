import 'package:dcbase/dcbase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/modules/Onboarding/view/onboarding1.dart';
import 'package:g_tracker/modules/Onboarding/view/onboarding2.dart';
import 'package:g_tracker/modules/Onboarding/view/onboarding3.dart';
import 'package:g_tracker/modules/Onboarding/view/onboarding4.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../AppComponents/text_styles.dart';
import '../controller/onboarding_controller.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375, 812));

    return Scaffold(
      body: BaseWidget(
        model: OnBoardingScreenVm(),
        onModelReady: (modal) {},
        builder: (context, modal, child) {
          return Stack(
            children: [
              PageView(
                onPageChanged: (int value){
                  modal.setPageIndex(value);
                },
                controller: modal.pageController,
                children: const [
                  Onboarding1(
                    buttonName: "Next",
                    title: "Location History",
                    subTitle:
                        "Get full location history of family's \n whereabouts (up to 2 months)",
                    middleImage: "assets/images/maskg.png",
                    backgroundImage: "assets/images/background.png",
                  ),
                  Onboarding2(),
                  Onboarding3(),
                  Onboarding4(),
                ],
              ),
              Positioned(
                bottom: 100.h,
                left: 30.w,
                child: GestureDetector(
                  onTap: () {
                    modal.forwardAction(context);
                  },
                  child: Container(
                    height: 52.h,
                    width: 315.w,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFC5846),
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    child: Center(
                      child: Text(
                        "Next ",
                        textAlign: TextAlign.center,
                        style: TextStyles.buttonTextStyle,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 38.h,
                right: 25.w,
                child: TextButton(
                  onPressed: () {
                    modal.navigateToLogin(context);
                  },
                  child: Text(
                    "Skip >",
                    style: TextStyles.skipButtonTextStyle,
                  ),
                ),
              ),

              //dot indicator
              Positioned(
                bottom: 50.h,
                left: 140.w,
                child: SizedBox(
                  child: SmoothPageIndicator(
                    effect: const SlideEffect(
                      activeDotColor: Color(0xFFFF4444),
                      dotColor: Colors.white,
                    ),
                    controller: modal.pageController,
                    count: 4,
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
