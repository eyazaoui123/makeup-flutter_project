import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter_application_1/pages/widgets/onBoardingDotNavigation.dart';
import 'package:flutter_application_1/pages/widgets/onBoardingPage.dart';
import 'package:flutter_application_1/pages/widgets/onBoardingSkip.dart';
import 'package:flutter_application_1/utils/constants/colors.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_application_1/utils/constants/image_strings.dart';
import 'package:flutter_application_1/utils/device/device_utility.dart';
import 'package:flutter_application_1/utils/helpers/helper_functions.dart';

//designe file
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          //horizontal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              onBoardingPge(
                image: TImages.onBoardingImage1,
                title: "Choose your product",
                subtitle:
                    "welcome to a world of limitless choices - Your Perfect Product Awaits ",
              ),
              onBoardingPge(
                image: TImages.onBoardingImage3,
                title: "Select Payment Method",
                subtitle:
                    "For Seamless Transactions,Choose Your Payment Pat - Your Convenience , Our Priority!",
              ),
              onBoardingPge(
                image: TImages.onBoardingImage2,
                title: "Deliver ay your door step",
                subtitle:
                    "From Our Doorstep to Yours - Swift,Secure,and Contactless Delivery! ",
              ),
            ],
          ),
          //skip button
          onBoardingSkip(),
          //dot navigation smoothPageIndicator
          onBoardingDotNavigation(),
          //cicular button

          onBoardingNextbuttom()
        ],
      ),
    );
  }
}

class onBoardingNextbuttom extends StatelessWidget {
  const onBoardingNextbuttom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
        final   dark=THelperFunctions.isDarkMode(context);

    return Positioned(
        right: 10,
        bottom: TDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: CircleBorder(), backgroundColor:dark?TColors.primary: Colors.black),
            onPressed: () => OnBoardingController.instance.nextPage(),
            child: Icon(Iconsax.arrow_right_3)));
  }
}
