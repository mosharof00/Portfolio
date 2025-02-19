import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio/global/sizedbox_extension.dart';
import '../gen/colors.gen.dart';
import 'app_text_style.dart';

Widget globalButton(
    {required VoidCallback onTap,
    required String text,
    Color? color,
    Color? shadowColor,
    Color? borderColor,
    Color? textColor,
    double? height,
    double? blurRadius,
    double? width,
    double? fontSize,
    FontWeight? fontWeight,
    BorderRadius? borderRadius,
    LinearGradient? gradient,
    List<BoxShadow>? boxShadow,
    Widget? suffixWidget,
    Widget? prefixWidget,
    EdgeInsetsGeometry? padding}) {
  return CupertinoButton(
    onPressed: onTap,
    padding: padding ?? EdgeInsets.zero,
    child: Container(
        height: height ?? 45.h,
        width: width ?? Get.width,
        decoration: BoxDecoration(
          color: color ?? ColorName.primaryColor,
          gradient: gradient,
          borderRadius: borderRadius ?? BorderRadius.circular(5.r),
          border: Border.all(color: borderColor ?? Colors.transparent),
          boxShadow: boxShadow ??
              [
                BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5.r,
                    offset: const Offset(1, 1))
              ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            prefixWidget ?? 0.width,
            AppTextStyle(
              text: text,
              color: textColor ?? Colors.white,
              fontSize: fontSize ?? 15,
              fontWeight: fontWeight ?? FontWeight.w500,
            ),
            suffixWidget ?? 0.width,
          ],
        )),
  );
}
