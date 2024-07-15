import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter_application_1/utils/device/device_utility.dart';

class onBoardingSkip extends StatelessWidget {
  const onBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: 10,
        top: TDeviceUtils.getAppBarHeight(),
        child: TextButton(onPressed: () =>  OnBoardingController.instance.skipPage(context), child: Text("Skip")));
  }
}
