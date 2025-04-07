import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
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
    print('Screen width: ${Responsive2.screenWidth(context)}');
    Get.put(HomeController(), permanent: true);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: Responsive2.isMobile(context)
                      ? 400.h
                      : Responsive2.isMobileToTablet(context)
                          ? 450.h
                          : Responsive2.isTablet(context)
                              ? 500.h
                              : Responsive2.isTabletToWeb(context)
                                  ? 550.h
                                  : 600.h,
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: ColorName.primaryColor.withAlpha(30),
                  ),
                  child: Stack(
                    children: [
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
                                      AppTextStyle(
                                        text: 'Hi, I’m ✌',
                                        fontSize: 12.sp,
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
                                  40.height,
                                  Row(
                                    children: [
                                      globalButton(
                                        onTap: () {},
                                        text: "Lets Talk",
                                        color: Colors.black,
                                        height: 40.h,
                                        width: 130,
                                      )
                                          .animate()
                                          .fade(duration: 1000.ms)
                                          .slideX(
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
                                        textColor: Colors.black,
                                        text: "Projects",
                                        height: 40.h,
                                        width: 130,
                                      )
                                          .animate()
                                          .fade(duration: 1200.ms)
                                          .slideX(
                                            begin: -1,
                                            end: 0,
                                            duration: 1500.ms,
                                          ),
                                    ],
                                  ),
                                  30.height,
                                  Row(
                                    children: [
                                      AppTextStyle(
                                        text: "200",
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      10.width,
                                      AppTextStyle(
                                        text: "Projects",
                                      ),
                                      20.width,
                                      Icon(
                                        Icons.gite,
                                      ),
                                      10.width,
                                      Icon(
                                        Icons.facebook,
                                      ),
                                      10.width,
                                      Icon(
                                        Icons.facebook,
                                      ),
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
                                      child: Container(
                                        height: Responsive.isMobile(context)
                                            ? 200.h
                                            : (Responsive.isTablet(context)
                                                ? 300.h
                                                : 400.h),
                                        width: Get.width,
                                        decoration: BoxDecoration(
                                            color: ColorName.primaryColor,
                                            borderRadius:
                                                BorderRadius.circular(20.r)),
                                        child: Stack(children: [
                                          // Image.asset('assets/images/shape_image.png',
                                          // fit: BoxFit.cover,
                                          // ),

                                          Center(
                                              child: AppTextStyle(
                                            text:
                                                Responsive2.screenWidth(context)
                                                    .toString(),
                                            color: Colors.white,
                                          )),
                                        ]),
                                      ),
                                    )
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                          decoration: BoxDecoration(
                                              color: Colors.black),
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
                  )),
              50.height,
              MySpecialties(
                context: context,
              ),
              20.height,
            ],
          ),
        ),
      ),
    );
  }
}
