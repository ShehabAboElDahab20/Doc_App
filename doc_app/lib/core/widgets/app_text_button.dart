import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_colors.dart';
import '../theming/styles.dart';


class AppTextButton extends StatelessWidget {
  final double? borderRadius;
  final double? borderWidth;
  final Color? backgroundColor;
  final Color? borderColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;
  final String buttonText;
  final TextStyle? textStyle;
  final VoidCallback? onPressed;
  const AppTextButton(
      {super.key,
      this.borderRadius,
      this.backgroundColor,
      this.horizontalPadding,
      this.verticalPadding,
      this.buttonHeight,
      this.buttonWidth,
      required this.buttonText,
      this.textStyle,
      this.onPressed,
      this.borderWidth,
      this.borderColor});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        side: WidgetStateProperty.all<BorderSide>(
          BorderSide(
              width: borderWidth ?? 1.0,
              color: borderColor ?? backgroundColor ?? AppColors.mainBlue),
        ),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 24.r))),
        backgroundColor:
            WidgetStatePropertyAll(backgroundColor ?? AppColors.mainBlue),
        padding: WidgetStateProperty.all<EdgeInsets>(
          EdgeInsets.symmetric(
              horizontal: horizontalPadding?.w ?? 0.w,
              vertical: verticalPadding?.h ?? 0.h),
        ),
        fixedSize: WidgetStateProperty.all(
            Size(buttonWidth?.w ?? double.maxFinite, buttonHeight ?? 48.h)),
      ),
      onPressed: onPressed,
      child: Text(buttonText, style: textStyle ?? Styles.text16Weight600White),
    );
  }
}
