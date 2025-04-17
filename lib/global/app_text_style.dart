import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import '../gen/colors.gen.dart';
import 'package:get/get.dart';

class AppTextStyle extends StatelessWidget {
  const AppTextStyle({
    required this.text,
    this.maxLines,
    this.fontSize,
    this.fontWeight,
    this.height,
    this.color,
    this.textAlign,
    this.decoration,
    super.key, this.decorationColor,
  });
  final String text;
  final int? maxLines;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? height;
  final Color? color;
  final TextAlign? textAlign;
  final TextDecoration? decoration;
  final Color? decorationColor;
  @override
  Widget build(BuildContext context) {
    return Text(
      text.tr,
      textAlign: textAlign ?? TextAlign.start,
      maxLines: maxLines,
      style: GoogleFonts.ibmPlexSerif(
          textStyle: TextStyle(
        color: color ?? ColorName.black,
        fontSize: fontSize ?? 14,
        fontWeight: fontWeight,
        height: height??0,
        decoration: decoration,
            decorationColor: decorationColor,
      )),
    );
  }
}

class AppTitleTextStyle extends StatelessWidget {
  const AppTitleTextStyle({
    required this.text,
    this.maxLines,
    this.fontSize,
    this.fontWeight,
    this.height,
    this.color,
    this.textAlign,
    this.decoration,
    super.key, this.decorationColor,
  });
  final String text;
  final int? maxLines;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? height;
  final Color? color;
  final TextAlign? textAlign;
  final TextDecoration? decoration;
  final Color? decorationColor;
  @override
  Widget build(BuildContext context) {
    return Text(
      text.tr,
      textAlign: textAlign ?? TextAlign.start,
      maxLines: maxLines,
      style: GoogleFonts.permanentMarker(
          textStyle: TextStyle(
            color: color ?? ColorName.black,
            fontSize: fontSize ?? 14,
            fontWeight: fontWeight,
            height: height??0,
            decoration: decoration,
            decorationColor: decorationColor,
          )),
    );
  }
}
