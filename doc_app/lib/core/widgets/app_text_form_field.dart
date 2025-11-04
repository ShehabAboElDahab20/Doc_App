import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_complete_project/core/theming/app_colors.dart';
import 'package:flutter_complete_project/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextDirection? textDirection;
  final TextStyle? hintStyle;
  final String hintText;
  final double? radius;
  final bool? isObscureText;
  final bool? isDisable;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final List<TextInputFormatter>? inputFormatters;
  final Color? backgroundColor;
  final Function(String?)? onChanged;
  final TextEditingController? controller;
  final Function(String?) validator;
  final TextInputType? keyboardType;
  final FocusNode? focusNode;
  final Function? onFocusChange;
  final VoidCallback? onTap;
  final int? maxLines;

  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.inputFormatters,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    this.isDisable,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.prefixIcon,
    this.keyboardType,
    this.backgroundColor,
    this.controller,
    required this.validator,
    this.onChanged,
    this.radius,
    this.focusNode,
    this.onFocusChange,
    this.textDirection,
    this.onTap,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: !(isDisable ?? false),
      keyboardType: keyboardType,
      controller: controller,
      textDirection: textDirection ?? TextDirection.ltr,
      inputFormatters: inputFormatters,
      focusNode: focusNode,
      onChanged: onChanged,
      style: Styles.text14Weight400gray.copyWith(color: Colors.black87),
      validator: (value) {
        return validator(value);
      },
      maxLines: maxLines ?? 1,
      onTap: onTap,
      readOnly: onTap != null,
      decoration: InputDecoration(
        isDense: true,
        constraints: BoxConstraints(minHeight: 48.h),
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
        disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.lightGray, width: 1.3),
          borderRadius: BorderRadius.circular(radius ?? 8.0),
        ),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide:
                  const BorderSide(color: AppColors.mainBlue, width: 1.3),
              borderRadius: BorderRadius.circular(radius ?? 8.0),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide:
                  const BorderSide(color: AppColors.lightGray, width: 1.3),
              borderRadius: BorderRadius.circular(radius ?? 8.0),
            ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 1.3),
          borderRadius: BorderRadius.circular(radius ?? 8.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 1.3),
          borderRadius: BorderRadius.circular(radius ?? 8.0),
        ),
        hintStyle: hintStyle ?? Styles.text14Weight400gray,
        hintText: hintText,
        suffixIcon: suffixIcon,
        suffixIconColor: AppColors.mainBlue,
        prefixIcon: prefixIcon,
        fillColor: isDisable == true
            ? AppColors.gray
            : backgroundColor ?? Colors.white,
        errorStyle: TextStyle(
          color: Colors.red,
          fontSize: 10.sp,
          fontWeight: FontWeight.w400,
          height: 2,
        ),
        filled: true,
      ),
      obscureText: isObscureText ?? false,
    );
  }
}
