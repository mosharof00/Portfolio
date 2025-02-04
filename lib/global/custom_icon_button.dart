import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton(
      {super.key,
      this.onPressed,
      this.backgroundColor,
      this.icon,
      this.size,
      this.padding,
      this.iconColor,
      this.boxShadow, this.border});

  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? iconColor;
  final Widget? icon;
  final double? size;
  final List<BoxShadow>? boxShadow;
  final EdgeInsetsGeometry? padding;
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size ?? 35.w,
      height: size ?? 35.w,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundColor ?? Colors.white,
          border: border,
          boxShadow: boxShadow ??
              [
                BoxShadow(
                    color: Colors.black12,
                    blurRadius: 1.r,
                    offset: const Offset(1, 1))
              ]),
      child: CupertinoButton(
        padding: padding ?? EdgeInsets.zero,
        onPressed: onPressed ?? () => Navigator.of(context).pop(),
        child: icon ??
            Icon(
              CupertinoIcons.back,
              size: 22.sp,
              color: iconColor ?? Colors.black,
            ),
      ),
    );
  }
}
