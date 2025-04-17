import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/modules/home/controllers/home_controller.dart';
import 'package:portfolio/global/app_text_style.dart';
import 'package:portfolio/global/shimmer_loading.dart';
import 'package:portfolio/global/sizedbox_extension.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';
import '../../../../global/custom_icon_button.dart';
import '../../../../global/custom_svg_image.dart';
import '../../../../global/global_button.dart';
import '../../../../helper/project_demo_layout.dart';
import '../../../../helper/responsive_layout.dart';

class EndPart extends StatelessWidget {
  const EndPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: Get.width,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: ColorName.black,
        ),
        child: SizedBox(
          width: Responsive.isMobile(context) ? Get.width : 900,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              20.height,
              Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppTitleTextStyle(
                          text: "Le t’s work together",
                          fontSize: 20,
                          color: Colors.white,
                        ),
                        15.height,
                        Row(
                          spacing: 10,
                          children: [
                            AppTextStyle(
                              text: "Explore me with",
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                            Container(
                              height: 18,
                              width: 1,
                              color: Colors.grey,
                            ),
                            CustomIconButton(
                                size: 20,
                                backgroundColor: Colors.transparent,
                                onPressed: () async {
                                  if (!await launchUrl(Uri.parse(
                                      "https://github.com/mosharof00"))) {
                                    throw Exception(
                                        'Could not launch : https://github.com/mosharof00');
                                  }
                                },
                                icon: SvgPicture.asset(Assets.icons.gitLogo)),
                            CustomIconButton(
                                size: 20,
                                backgroundColor: Colors.white,
                                onPressed: () async {
                                  if (!await launchUrl(Uri.parse(
                                      "https://www.linkedin.com/in/mosharof-khan/"))) {
                                    throw Exception(
                                        'Could not launch : https://www.linkedin.com/in/mosharof-khan/');
                                  }
                                },
                                icon: SvgPicture.asset(
                                  Assets.icons.linkdenLogo,
                                  height: Get.height,
                                  width: Get.width,
                                )),
                            IconButton(
                              color: Colors.white,
                              onPressed: () async {
                                if (!await launchUrl(Uri.parse(
                                    "https://www.facebook.com/mdmosharofkhan.khan.3"))) {
                                  throw Exception(
                                      'https://www.facebook.com/mdmosharofkhan.khan.3');
                                }
                              },
                              padding: EdgeInsets.zero,
                              icon: Icon(
                                size: 25,
                                Icons.facebook,
                                color: Colors.black,
                              ),
                            ),
                            CustomIconButton(
                                size: 20,
                                backgroundColor: Colors.white,
                                onPressed: () async {
                                  // if (!await launchUrl(Uri.parse(""))) {
                                  //   throw Exception('Could not launch : ');
                                  // }
                                },
                                icon: SvgPicture.asset(
                                  Assets.icons.linkLogo,
                                  height: Get.height,
                                  width: Get.width,
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                  !Responsive2.isMobile(context)
                      ? Expanded(
                          child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Column(
                            children: [
                              _helperContainer(
                                  title:
                                      "Looking for a hectic full stack developer?",
                                  contract: "mosharof5khan@gmail.com"),
                              10.height,
                              _helperContainer(
                                  title:
                                      "Want a more in-depth look at my history?",
                                  contract: "+880 1314859997"),
                            ],
                          ),
                        ))
                      : 0.height
                ],
              ),
              Responsive2.isMobile(context)
                  ? Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          _helperContainer(
                              title:
                                  "Looking for a hectic full stack developer?",
                              contract: "mosharof5khan@gmail.com"),
                          10.height,
                          _helperContainer(
                              title: "Want a more in-depth look at my history?",
                              contract: "+880 1314859997"),
                        ],
                      ))
                  : 0.height,
              20.height,
              AppTextStyle(
                text: "MOSHAROF KHAN",
                height: 20.sp,
                color: ColorName.primaryColor.withAlpha(50),
              ),
            ],
          ),
        ));
  }
}

Widget _helperContainer({
  required String title,
  required String contract,
  double? height,
}) {
  return Container(
    height: height ?? 150,
    width: Get.width,
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1, color: Colors.white38)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        AppTextStyle(
          text: title,
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: AppTextStyle(
                text: contract,
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: ColorName.primaryColor,
              ),
            ),
            customSvgImage(
              imagePath: Assets.icons.upArrowIcon,
              height: 20,
              width: 20,
              color: Colors.white,
            )
          ],
        )
      ],
    ),
  );
}
