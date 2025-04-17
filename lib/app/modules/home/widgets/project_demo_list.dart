import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/modules/home/controllers/home_controller.dart';
import 'package:portfolio/global/app_text_style.dart';
import 'package:portfolio/global/shimmer_loading.dart';
import 'package:portfolio/global/sizedbox_extension.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';
import '../../../../global/custom_svg_image.dart';
import '../../../../global/global_button.dart';
import '../../../../helper/project_demo_layout.dart';
import '../../../../helper/responsive_layout.dart';

class ProjectDemoList extends StatelessWidget {
  const ProjectDemoList({super.key, required this.controller});
  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: Get.width,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: ColorName.primaryColor.withAlpha(30),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppTitleTextStyle(text: "Portfolio", color: ColorName.primaryColor),
            AppTextStyle(
              text: "My Recent Projects",
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
            20.height,
            SizedBox(
              width: Responsive.isMobile(context) ? Get.width : 1200,
              child: Obx(() {
                if (controller.isProjectLoading.value) {
                  return MasonryGridView.count(
                      // scrollDirection: Axis.horizontal,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      crossAxisCount: 2,
                      mainAxisSpacing: 15.h,
                      crossAxisSpacing: 15.w,
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        // final project = controller.projectList[index];
                        return AnimationConfiguration.staggeredList(
                          position: index,
                          duration: const Duration(milliseconds: 300),
                          child: ScaleAnimation(
                              child: shimmerLoadingWidget(
                            height: 300.h,
                          )),
                        );
                      });
                } else {
                  return MasonryGridView.count(
                      // scrollDirection: Axis.horizontal,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      crossAxisCount: 2,
                      mainAxisSpacing: 10.h,
                      crossAxisSpacing: 10.w,
                      itemCount: controller.projectList.length,
                      itemBuilder: (context, index) {
                        final project = controller.projectList[index];
                        return ProjectDemoLayout(
                          project: project,
                        );
                      });
                }
              }),
            ),
            30.height,
            globalButton(
                width: Responsive.isMobile(context) ? Get.width : 900,
                onTap: () {},
                text: "All Projects",
                color: Colors.black,
                textColor: Colors.white,
                widget: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppTextStyle(
                      text: "All Projects",
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                    30.width,
                    customSvgImage(
                        imagePath: Assets.icons.upArrowIcon,
                        color: ColorName.white,
                        height: 20,
                        width: 20)
                  ],
                )),
          ],
        ));
  }
}
