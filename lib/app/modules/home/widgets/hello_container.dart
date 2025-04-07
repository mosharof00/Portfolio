import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/global/sizedbox_extension.dart';

import '../../../../gen/colors.gen.dart';
import '../../../../global/app_text_style.dart';

Widget helloContainer(
    {double? height, double? width, EdgeInsetsGeometry? margin}) {
  return Container(
    height: height,
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
