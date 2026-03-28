import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:halaby_doc/core/theme/app_color.dart';
import 'package:halaby_doc/core/theme/textstyles.dart';

class AppTextFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final InputBorder? errorBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final Color? backgroundColor;
  final bool? isObscureText;
  final Widget? suffixIcon;

  const AppTextFormField({
    super.key,
    required this.hintText,
    required this.controller,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.errorBorder,
    this.inputTextStyle,
    this.hintStyle,
    this.backgroundColor,
    this.isObscureText,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: AppColor.primaryColor,
      cursorOpacityAnimates: true,
      cursorRadius: Radius.circular(2),
      decoration: InputDecoration(
        isDense: true,
        contentPadding:
            contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder:
            focusedBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppColor.primaryColor,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
        enabledBorder:
            enabledBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppColor.grayLighter,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
        errorBorder:
            errorBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(color: AppColor.error, width: 1.3),
              borderRadius: BorderRadius.circular(12),
            ),
        hintText: hintText,
        hintStyle: hintStyle ?? TextStyles.font13GrayLighteMedium,
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: backgroundColor ?? AppColor.grayLightest,
      ),
      style: inputTextStyle ?? TextStyles.font14GrayDarkNormal,
      obscureText: isObscureText ?? false,
    );
  }
}
