import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:portfolio/global/sizedbox_extension.dart';

import '../../../../gen/colors.gen.dart';
import '../../../../global/app_text_style.dart';
import '../../../../helper/responsive_layout.dart';
import 'home_static_list.dart';

class MySpecialties extends StatelessWidget {
  const MySpecialties({super.key, required this.context});
  final BuildContext context;

  @override
  Widget build(context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppTextStyle(
                          text: "Services",
                          color: ColorName.primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        AppTextStyle(
                          text: "My specialties",
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ),
                  Responsive.isMobile(context)
                      ? 0.width
                      : Expanded(
                          child: AppTextStyle(
                            text:
                                "Synergistically seize front-end methods of empowerment without extensive core competencies. Progressively repurpose alternative platforms",
                          ),
                        )
                ],
              ),
            ],
          ),
        ),
        20.height,
        Padding(
          padding: EdgeInsets.only(left: 15.w, right: 15.w),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: MasonryGridView.count(
                    // scrollDirection: Axis.horizontal,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    crossAxisCount: Responsive.isMobile(context) ? 2 : 3,
                    mainAxisSpacing: 10.h,
                    crossAxisSpacing: 10.w,
                    itemCount: HomeStaticList.specialties.length,
                    itemBuilder: (context, index) {
                      final specialist = HomeStaticList.specialties[index];
                      return AnimationConfiguration.staggeredList(
                        position: index,
                        duration: const Duration(milliseconds: 300),
                        child: ScaleAnimation(
                            child: Container(
                          height: 150.h,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        )),
                      );
                    }),
              ),
              Responsive.isMobile(context)
                  ? SizedBox.shrink()
                  : Expanded(
                      flex: 1,
                      child: _helloContainer(
                          margin: EdgeInsets.only(left: 10.w), height: 300.h))
            ],
          ),
        ),
        Responsive.isMobile(context)
            ? _helloContainer(
                margin: EdgeInsets.all(10.r), height: 150.h, width: Get.width)
            : SizedBox.shrink()
      ],
    );
  }
}

Widget _helloContainer(
    {double? height, double? width, EdgeInsetsGeometry? margin}) {
  return Container(
    height: height ?? 200.h,
    width: width,
    margin: margin,
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: Colors.white70, width: 0.5)),
    child: Column(
      children: [
        Icon(
          Icons.arrow_forward,
          color: ColorName.primaryColor,
        ),
        Spacer(),
        AppTextStyle(
          text: "SAY HELLO!",
          color: Colors.yellow.shade800,
          fontSize: 16,
        ),
        5.height,
        AppTextStyle(
          text: "mosharof5khan@gmail.com",
          color: Colors.white,
          fontSize: 16,
        ),
      ],
    ),
  );
}
