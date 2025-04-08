import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/global/sizedbox_extension.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import '../../../../gen/colors.gen.dart';
import '../../../../global/app_text_style.dart';
import '../../../../global/global_button.dart';
import '../../../../helper/logger.dart';
import '../../../../helper/responsive_layout.dart';

class MyExperience extends StatelessWidget {
  const MyExperience({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        children: [
          Responsive.isMobile(context)
              ? _image(context: context, alignment: Alignment.topLeft)
              : SizedBox.shrink(),
          Responsive.isMobile(context) ? 10.height : SizedBox.shrink(),
          Row(
            children: [
              Responsive.isMobile(context)
                  ? SizedBox.shrink()
                  : Expanded(
                      child: _image(
                          context: context, alignment: Alignment.topCenter)),
              Expanded(
                  child: Align(
                alignment: Alignment.topCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        AppTextStyle(
                          text: 'Hello I’m ',
                          color: ColorName.primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                    AppTextStyle(
                      text: 'Mosharof Khan',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    AppTextStyle(
                      text: "Flutter Developer",
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                    40.height,
                    Row(
                      children: [
                        globalButton(
                          onTap: () {},
                          text: "Lets Talk",
                          color: Colors.black,
                          height: 40,
                          width: 130,
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
                          height: 40,
                          width: 130,
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
                    ),
                  ],
                ),
              )),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _image(
    {required BuildContext context, required AlignmentGeometry alignment}) {
  return Stack(
    children: [
      Align(
        alignment: alignment,
        child: Container(
          height: 300,
          width: 250,
          decoration: BoxDecoration(
              color: ColorName.primaryColor.withAlpha(70),
              borderRadius: BorderRadius.circular(20.r)),
          child: Stack(children: [
            // Image.asset('assets/images/shape_image.png',
            // fit: BoxFit.cover,
            // ),

            Center(
                child: AppTextStyle(
              text: Responsive2.screenWidth(context).toString(),
              color: Colors.white,
            )),
          ]),
        ),
      ),
      Positioned(
          bottom: 20,
          right: 20.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 45,
                width: 60,
                decoration: BoxDecoration(
                    color: ColorName.primaryColor,
                    borderRadius: BorderRadius.circular(15.r)),
                child: Center(
                  child: AnimatedTextKit(
                    animatedTexts: [
                      ColorizeAnimatedText(
                        '2 +',
                        textStyle: GoogleFonts.ibmPlexSerif(
                            textStyle: TextStyle(
                          // color: color ?? ColorName.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        )),
                        colors: [
                          Colors.black,
                          Colors.white,
                          Colors.black,
                          ColorName.primaryColor
                        ],
                      ),
                    ],
                    isRepeatingAnimation: true,

                  ),
                ),
              ),
              10.height,
              SizedBox(
                width: 150,
                child: AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText(
                      "Years of Experience",
                      textStyle: GoogleFonts.ibmPlexSerif(
                        textStyle: TextStyle(
                          color: ColorName.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      speed: const Duration(milliseconds: 200), // Adjust this for slower/faster
                    ),
                  ],
                  totalRepeatCount: 1,
                  pause: Duration(milliseconds: 1000),
                  displayFullTextOnTap: true,
                  isRepeatingAnimation: true,
                  // stopPauseOnTap: true,
                ),
              )

            ],
          ))
    ],
  );
}
