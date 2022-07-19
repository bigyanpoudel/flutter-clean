import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_storage/get_storage.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:test_app/constant/image_path.dart';
import 'package:test_app/theme/app_color.dart';

import '../../routes/routes.dart';

class AppOnboardingScreen extends StatelessWidget {
  const AppOnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isOnboarded = GetStorage();
    final listPagesViewModel = [
      PageViewModel(
        title: "First Screen",
        decoration: PageDecoration(
          fullScreen: true,
          pageColor: Colors.transparent,
          titleTextStyle: TextStyle(
            fontSize: 15.sp,
            color: AppColor.royalBlue,
            fontWeight: FontWeight.w600,
          ),
          bodyTextStyle: TextStyle(
            color: AppColor.royalBlue,
            fontSize: 12.sp,
          ),
        ),
        body: "This is the first screen that you see",
        image: Stack(
          children: [
            Positioned(
              left: 0,
              top: 10,
              right: 0,
              child: SizedBox(
                height: 250.h,
                width: 300.w,
                child: SvgPicture.asset(
                  AppImage.firtImage,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
      PageViewModel(
        title: "Second Screen",
        decoration: PageDecoration(
          fullScreen: true,
          pageColor: Colors.transparent,
          titleTextStyle: TextStyle(
            fontSize: 15.sp,
            color: AppColor.royalBlue,
            fontWeight: FontWeight.w600,
          ),
          bodyTextStyle: TextStyle(
            color: AppColor.royalBlue,
            fontSize: 12.sp,
          ),
        ),
        body: "This is the Second screen that you see",
        image: Stack(
          children: [
            Positioned(
              left: 0,
              top: 10,
              right: 0,
              child: SizedBox(
                height: 250.h,
                width: 300.w,
                child: SvgPicture.asset(
                  AppImage.secondImage,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
      PageViewModel(
        title: "Third Screen",
        decoration: PageDecoration(
          fullScreen: true,
          pageColor: Colors.transparent,
          titleTextStyle: TextStyle(
            fontSize: 15.sp,
            color: AppColor.royalBlue,
            fontWeight: FontWeight.w600,
          ),
          bodyTextStyle: TextStyle(
            color: AppColor.royalBlue,
            fontSize: 12.sp,
          ),
        ),
        body: "This is the third screen that you see",
        image: Stack(
          children: [
            Positioned(
              left: 0,
              top: 10,
              right: 0,
              child: SizedBox(
                height: 250.h,
                width: 300.w,
                child: SvgPicture.asset(
                  AppImage.thirdImage,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
      PageViewModel(
        title: "Fourth Screen",
        decoration: PageDecoration(
          fullScreen: true,
          pageColor: Colors.transparent,
          titleTextStyle: TextStyle(
            fontSize: 15.sp,
            color: AppColor.royalBlue,
            fontWeight: FontWeight.w600,
          ),
          bodyTextStyle: TextStyle(
            color: AppColor.royalBlue,
            fontSize: 12.sp,
          ),
        ),
        body: "This is the fourth screen that you see",
        image: Stack(
          children: [
            Positioned(
              left: 0,
              top: 10,
              right: 0,
              child: SizedBox(
                height: 250.h,
                width: 300.w,
                child: SvgPicture.asset(
                  AppImage.fourthImage,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    ];
    return SafeArea(
        child: IntroductionScreen(
      pages: listPagesViewModel,
      onDone: () {
        context.router.replace(const NavigationScreenRoute());
        isOnboarded.writeIfNull(
          'intro',
          false,
        ); //make it true if you want to see onboarding screen every time app open but make it false for only one time
      },
      showSkipButton: true,
      skip: Text(
        'skip',
        style: TextStyle(
          fontWeight: FontWeight.normal,
          color: AppColor.royalBlue,
          fontSize: 18.sp,
        ),
      ),
      next: Text(
        'next',
        style: TextStyle(
          fontWeight: FontWeight.normal,
          color: AppColor.royalBlue,
          fontSize: 18.sp,
        ),
      ),
      done: Text(
        "Done",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: AppColor.royalBlue,
          fontSize: 18.sp,
        ),
      ),
      dotsDecorator: DotsDecorator(
        size: Size.square(10.0.r),
        activeSize: Size(10.w, 10.h),
        activeColor: Colors.black,
        color: Colors.black26,
        spacing: const EdgeInsets.symmetric(horizontal: 3.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30.r),
          ),
        ),
      ),
    ));
  }
}
