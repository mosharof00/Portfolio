import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget? mobileToTablet;
  final Widget? tablet;
  final Widget? tabletToWeb;
  final Widget web;

  const ResponsiveLayout({
    super.key,
    required this.mobile,
    this.mobileToTablet,
    this.tablet,
    this.tabletToWeb,
    required this.web,
  });

  static double screenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static bool isMobile(BuildContext context) => screenWidth(context) < 480;
  static bool isMobileToTablet(BuildContext context) =>
      screenWidth(context) >= 480 && screenWidth(context) < 600;
  static bool isTablet(BuildContext context) =>
      screenWidth(context) >= 600 && screenWidth(context) < 900;
  static bool isTabletToWeb(BuildContext context) =>
      screenWidth(context) >= 900 && screenWidth(context) < 1200;
  static bool isWeb(BuildContext context) => screenWidth(context) >= 1200;

  @override
  Widget build(BuildContext context) {
    double width = screenWidth(context);

    if (width >= 1200) {
      return web;
    } else if (tabletToWeb != null && width >= 900) {
      return tabletToWeb!;
    } else if (tablet != null && width >= 600) {
      return tablet!;
    } else if (mobileToTablet != null && width >= 480) {
      return mobileToTablet!;
    } else {
      return mobile;
    }
  }
}
