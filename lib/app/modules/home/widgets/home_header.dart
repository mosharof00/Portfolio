import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:portfolio/global/custom_icon_button.dart';
import 'package:portfolio/global/sizedbox_extension.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';
import '../../../../global/app_text_style.dart';
import '../../../../global/global_button.dart';
import '../../../../helper/logger.dart';
import '../../../../helper/responsive_layout.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: Responsive2.isMobile(context)
            ? 350.h
            : Responsive2.isMobileToTablet(context)
                ? 350.h
                : Responsive2.isTablet(context)
                    ? 430.h
                    : Responsive2.isTabletToWeb(context)
                        ? 500.h
                        : 550.h,
        width: Get.width,
        decoration: BoxDecoration(
          color: ColorName.primaryColor.withAlpha(30),
        ),
        child: Stack(
          children: [
            !Responsive.isMobile(context)
                ? SizedBox.shrink()
                : Align(
                    alignment: Alignment.topRight,
                    child: SizedBox(
                      height: Responsive2.isMobile(context) ? 300.h : 350.h,
                      width: Get.width,
                      child: Image.asset(
                        Assets.images.mosharofHeaderPng.path,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ).animate().fade(duration: 300.ms).slideX(
                      begin: 1.0, // Start from 100% to the right
                      end: 0.0, // Slide to original position
                      duration: 1000.ms,
                      curve: Curves.easeOut,
                    ),
            Row(
              children: [
                Expanded(
                    child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(50.r),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            AppTitleTextStyle(
                              text: '--------   Hi, I’m ✌',
                              fontSize: 8.sp,
                              color: ColorName.primaryColor,
                            ).animate().fade(duration: 400.ms).slideX(
                                begin: -0.5,
                                end: 0,
                                duration: 600.ms,
                                curve: Curves.easeOut),
                          ],
                        ),
                        AppTextStyle(
                          text: 'Mosharof Khan',
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                        ).animate().fade(duration: 60.ms).slideX(
                            begin: -0.8,
                            end: 0,
                            duration: 800.ms,
                            curve: Curves.easeOut),
                        AppTextStyle(
                          text: "Flutter Developer",
                          fontSize: 12.sp,
                          color: Colors.black87,
                        ).animate().fade(duration: 800.ms).slideX(
                            begin: -1,
                            end: 0,
                            duration: 1000.ms,
                            curve: Curves.easeOut),
                        Responsive.isMobile(context) ? Spacer() : 40.height,
                        Row(
                          children: [
                            globalButton(
                              onTap: () {},
                              text: "Lets Talk",
                              color: Colors.black,
                              height: 35.h,
                              width: Responsive.isMobile(context) ? 90.w : 125,
                            ).animate().fade(duration: 1000.ms).slideX(
                                  begin: -1,
                                  end: 0,
                                  duration: 1200.ms,
                                ),
                            SizedBox(
                              width: 10,
                            ),
                            globalButton(
                              onTap: () {
                                Log.i("Tapped");
                              },
                              color: Colors.transparent,
                              borderColor: Colors.white,
                              textColor: Responsive2.isMobileToTablet(context)
                                  ? Colors.white
                                  : Colors.black,
                              text: "Projects",
                              height: 35.h,
                              width: Responsive.isMobile(context) ? 90.w : 125,
                            ).animate().fade(duration: 1200.ms).slideX(
                                  begin: -1,
                                  end: 0,
                                  duration: 1500.ms,
                                ),
                          ],
                        ),
                        10.height,
                        Row(
                          spacing: Responsive.isMobile(context) ||
                                  Responsive2.isTablet(context)
                              ? 5
                              : 15,
                          children: [
                            AppTitleTextStyle(
                              text: "30+",
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: ColorName.primaryColor,
                            ),
                            AppTextStyle(
                              text: "Projects",
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
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
                        ).animate().fade(duration: 1200.ms).slideX(
                              begin: -1,
                              end: 0,
                              duration: 1500.ms,
                            ),
                      ],
                    ),
                  ),
                )),
                Responsive.isMobile(context)
                    ? SizedBox.shrink()
                    : Expanded(
                        child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: SizedBox(
                              height: Responsive2.isMobileToTablet(context)
                                  ? 400.h
                                  : Responsive2.isTablet(context)
                                      ? 400.h
                                      : Responsive2.isWeb(context)
                                          ? 500.h
                                          : 500.h,
                              width: Get.width,
                              child: Image.asset(
                                Assets.images.mosharofHeaderPng.path,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ).animate().fade(duration: 200.ms).slideX(
                                begin: 1.0, // Start from 100% to the right
                                end: 0.0, // Slide to original position
                                duration: 1000.ms,
                                curve: Curves.easeOut,
                              ),
                        ],
                      )),
              ],
            ),
            Positioned(
                top: 0,
                left: 20.w,
                right: 0.w,
                child: SizedBox(
                  height: 60,
                  width: Get.width,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(colors: [
                                      Colors.black,
                                      Colors.black54,
                                      Colors.black26
                                    ])),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              AppTextStyle(
                                text: 'MK',
                                fontSize: 18,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              AppTextStyle(
                                text: 'Lets talk',
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                              5.width,
                              Icon(Icons.send),
                              2.width,
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(color: Colors.black),
                                child: Center(
                                  child: Icon(
                                    Icons.menu_sharp,
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Container(
                        height: 1,
                        width: Get.width,
                        color: Colors.black,
                      )
                    ],
                  ),
                ))
          ],
        ));
  }
}
