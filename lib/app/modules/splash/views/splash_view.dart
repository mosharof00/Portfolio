import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:portfolio/gen/assets.gen.dart';

import '../../../../gen/colors.gen.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      backgroundColor: ColorName.white,
      body: Center(
        child: Image.asset(
          Assets.logo.splashAppLogo.path,
          fit: BoxFit.contain,
          height: 300.h,
          width: Get.width,
        ),
      ),
    );
  }
}
