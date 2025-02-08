import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:get/get.dart';
import 'package:portfolio/global/sizedbox_extension.dart';

import '../../../../global/cached_image_helper.dart';
import '../../../../helper/responsive_layout.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 15.w, right: 15.w),
              child: MasonryGridView.count(
                  // scrollDirection: Axis.horizontal,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  crossAxisCount: ResponsiveLayout.isMobile(context)
                      ? 2
                      : ResponsiveLayout.isTablet(context)
                          ? 3
                          : 4,
                  mainAxisSpacing: 10.h,
                  crossAxisSpacing: 10.w,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return AnimationConfiguration.staggeredList(
                        position: index,
                        duration: const Duration(milliseconds: 300),
                        child: ScaleAnimation(
                            child: Container(
                          height: 100.h,
                          decoration: BoxDecoration(color: Colors.red),
                          child: Center(
                            child: cachedImageWidget(
                              imgUrl:
                              // 'https://corsi.pinimg.com/736x/4d/c2/12/4dc21238979146c20e1330ae3a85b26a.jpg',
                             'https://cros/i.pinimg.com/236x/f1/c2/e4/f1c2e4ad310f52bb94a6e3c7eaa07ff0.jpg',
                              borderRadius: 15.r,
                              height: 100.h,
                              width: Get.width
                            ),
                          ),
                        )));
                  }),
            ),
          ),
          50.height,
          Expanded(
            child: ResponsiveLayout(
              mobile: Center(
                child: Text("Mobile View", style: TextStyle(fontSize: 16)),
              ),
              tablet: Center(
                child: Text("Tablet View", style: TextStyle(fontSize: 20)),
              ),
              web: Center(
                child: Text("Web/Desktop View", style: TextStyle(fontSize: 24)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
