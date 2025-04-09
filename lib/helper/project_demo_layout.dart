import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/models/project_demo_model.dart';
import 'package:portfolio/global/app_text_style.dart';
import 'package:portfolio/global/app_text_style_over_flow.dart';
import 'package:portfolio/global/cached_image_helper.dart';
import 'package:portfolio/global/sizedbox_extension.dart';
import 'package:portfolio/helper/responsive_layout.dart';

import '../gen/assets.gen.dart';
import '../gen/colors.gen.dart';
import '../global/custom_svg_image.dart';

class ProjectDemoLayout extends StatelessWidget {
  const ProjectDemoLayout({super.key, required this.project});
  final ProjectDemoModel project;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(10.r),
      decoration: BoxDecoration(
        // color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          cachedImageWidget(
              imgUrl: project.profileImageUrl!,
              borderRadius: 20,
              height: Responsive.isMobile(context) ? 200 : 250,
              width: Get.width),
          15.height,
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _helperContainer(text: "Android"),
              SizedBox(
                width: 15,
              ),
              _helperContainer(text: "IOS"),
            ],
          ),
          10.height,
          Row(
            children: [
              Expanded(
                child: AppTextStyleOverFlow(
                  text: project.title!,
                  maxLines: 2,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              customSvgImage(
                imagePath: Assets.icons.upArrowIcon,
                color: ColorName.primaryColor,
                height: 25,
                width: 25,
              )
            ],
          ),
          AppTextStyle(
            text: project.subTitle!,
            fontSize: 16,
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
    );
  }
}

Widget _helperContainer({required String text}) {
  return Container(
    height: 25.h,
    padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
    decoration: BoxDecoration(
      color: Colors.transparent,
      border: Border.all(color: Colors.grey, width: 1),
      borderRadius: BorderRadius.circular(50.r),
    ),
    child: AppTextStyle(
      text: text,
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
  );
}
