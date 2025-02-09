import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:get/get.dart';
import 'package:portfolio/gen/colors.gen.dart';
import 'package:portfolio/global/app_text_style.dart';
import 'package:portfolio/global/custom_svg_image.dart';
import 'package:portfolio/global/sizedbox_extension.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../global/cached_image_helper.dart';
import '../../../../helper/responsive_layout.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: ResponsiveLayout.isMobile(context)
                    ? 400.h
                    : ResponsiveLayout.isMobileToTablet(context)
                        ? 450.h
                        : ResponsiveLayout.isTablet(context)
                            ? 500.h
                            : ResponsiveLayout.isTabletToWeb(context)
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
                                      text: 'Hello, I’micon ✌',
                                      fontSize: 12.sp,
                                    ),
                                  ],
                                ),
                                AppTextStyle(
                                  text: 'Mosharof Khan',
                                  fontSize: 18.sp,
                                ),
                              ],
                            ),
                          ),
                        )),
                        Expanded(
                            child: Column(
                          children: [
                            CustomContainer(
                              backgroundColor: ColorName.primaryColor,
                              child: SizedBox( // or any other content you want to put in the container
                                width: 300, // Adjust the width as needed
                                height: 400, // Adjust the height as needed
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Content inside the container'),
                                  ],
                                ),
                              ),
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
                                        decoration:
                                            BoxDecoration(color: Colors.black),
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
            20.height,
            cachedImageWidget(
                imgUrl: '', height: 200.h, width: 200.w, borderRadius: 20.r)
          ],
        ),
      ),
    );
  }
}


class CustomContainer extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;

  const CustomContainer({
    Key? key,
    required this.child,
    this.backgroundColor = const Color(0xFFFFDA6D), // Default orange color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyCustomClipper(),
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
        ),
        child: child,
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    // Adjust these values to match the curve of the image
    path.lineTo(0, size.height * 0.25); // Start point (adjust for the top-left corner)
    path.quadraticBezierTo(size.width * 0.1, size.height * 0.35, size.width * 0.2, size.height * 0.35); // First curve
    path.lineTo(size.width * 0.8, size.height * 0.35); // Line to next curve
    path.quadraticBezierTo(size.width * 0.9, size.height * 0.35, size.width, size.height * 0.50); // Second curve
    path.lineTo(size.width, size.height); // Line to bottom right
    path.lineTo(0, size.height); // Line to bottom left
    path.close(); // Close the path to complete the shape
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false; // Return false if the shape doesn't change
  }
}