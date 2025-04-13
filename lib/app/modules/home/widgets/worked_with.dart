import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:portfolio/app/modules/home/controllers/home_controller.dart';
import 'package:portfolio/gen/colors.gen.dart';
import 'package:portfolio/global/app_text_style.dart';
import 'package:portfolio/global/global_divider.dart';
import 'package:portfolio/global/sizedbox_extension.dart';

import '../../../../helper/responsive_layout.dart';

class WorkedWith extends StatelessWidget {
  const WorkedWith({super.key, required this.controller});

  final HomeController controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Responsive2.isMobile(context) ? Get.width : 800,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppTitleTextStyle(
            text: "Worked with",
            color: ColorName.primaryColor,
          ),
          20.height,
          globalDivider(),
          10.height,
          CarouselSlider.builder(
            itemCount: controller.workedWithPagedList.length,
            itemBuilder: (context, index, realIndex) {
              final items = controller.workedWithPagedList[index];
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: items
                    .map((item) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: AppTextStyle(
                            text: item,
                            fontSize: Responsive2.isMobile(context) ||
                                    Responsive2.isMobileToTablet(context)
                                ? 8.sp
                                : Responsive2.isTablet(context)
                                    ? 16
                                    : 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ))
                    .toList(),
              );
            },
            options: CarouselOptions(
              height: 50,
              autoPlay: true,
              viewportFraction: 1.0,
              enableInfiniteScroll: true,
              autoPlayInterval: const Duration(seconds: 3),
              onPageChanged: (index, reason) {
                controller.currentIndex.value = index;
              },
            ),
          ),
          10.height,
          globalDivider(),
        ],
      ),
    );
  }
}
