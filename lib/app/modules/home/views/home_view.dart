import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:portfolio/app/modules/home/widgets/home_header.dart';
import 'package:portfolio/app/modules/home/widgets/my_experience.dart';
import 'package:portfolio/app/modules/home/widgets/my_specialties.dart';
import 'package:portfolio/gen/colors.gen.dart';
import 'package:portfolio/global/app_text_style.dart';
import 'package:portfolio/global/custom_svg_image.dart';
import 'package:portfolio/global/global_button.dart';
import 'package:portfolio/global/sizedbox_extension.dart';
import 'package:portfolio/helper/logger.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../global/cached_image_helper.dart';
import '../../../../helper/responsive_layout.dart';
import '../controllers/home_controller.dart';
import '../widgets/home_static_list.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(HomeController(), permanent: true);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              HomeHeader(),
              50.height,
              MySpecialties(
                context: context,
              ),
              20.height,


              MyExperience(),
              50.height,
            ],
          ),
        ),
      ),
    );
  }
}
