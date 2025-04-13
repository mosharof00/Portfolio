import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:portfolio/app/modules/home/widgets/home_header.dart';
import 'package:portfolio/app/modules/home/widgets/my_experience.dart';
import 'package:portfolio/app/modules/home/widgets/my_specialties.dart';
import 'package:portfolio/global/app_text_style.dart';
import 'package:portfolio/global/sizedbox_extension.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../global/cached_image_helper.dart';
import '../../../../helper/responsive_layout.dart';
import '../controllers/home_controller.dart';
import '../widgets/home_static_list.dart';
import '../widgets/worked_with.dart';
import '../widgets/project_demo_list.dart';

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
              Center(
                  child: AppTextStyle(
                text: Responsive2.screenWidth(context).toString(),
                color: Colors.black,
              )),
              10.height,
              MySpecialties(
                context: context,
              ),
              MyExperience(),
              20.height,
              ProjectDemoList(controller: controller),
              50.height,
              WorkedWith(
                controller: controller,
              ),
              50.height,
            ],
          ),
        ),
      ),
    );
  }
}

// Widget animationList (){
//   return AnimationLimiter(
//     child: Obx(
//           () => ListView.builder(
//           physics: physics ?? const AlwaysScrollableScrollPhysics(),
//           shrinkWrap: true,
//           itemCount: controller.selectedTabIndex.value == 0
//               ? controller.courseList.length +
//               (controller.isLoading.value ? 1 : 0)
//               : controller.selectedTabIndex.value == 1
//               ? controller.paidCourseList.length +
//               (controller.isLoading.value ? 1 : 0)
//               : controller.freeCourseList.length +
//               (controller.isLoading.value ? 1 : 0),
//           itemBuilder: (context, item) {
//             if (controller.isLoading.value &&
//                 controller.selectedTabIndex.value == 0
//                 ? index == controller.courseList.length
//                 : controller.selectedTabIndex.value == 1
//                 ? index == controller.paidCourseList.length
//                 : index == controller.freeCourseList.length) {
//               return shimmerLoadingWidget(
//                 height: 110.h,
//                 width: Get.width,
//                 borderRadius: 15.r,
//               );
//             } else {
//               final course = controller.selectedTabIndex.value == 0
//                   ? controller.courseList[item]
//                   : controller.selectedTabIndex.value == 1
//                   ? controller.paidCourseList[item]
//                   : controller.freeCourseList[item];
//
//               return AnimationConfiguration.staggeredList(
//                 position: item,
//                 child: ScaleAnimation(
//                   duration: const Duration(milliseconds: 350),
//                   child: MentorCourseLayout(
//                     course: course,
//                     onTap: () {
//                       Get.toNamed(
//                         Routes.COURSE_DETAILS,
//                         arguments: {
//                           'courseID': course.id!,
//                         },
//                       );
//                     },
//                   ),
//                 ),
//               );
//             }
//           }),
//     ),
//   );
// }
