import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:halaby_doc/core/theme/app_color.dart';
import 'package:halaby_doc/core/theme/font_weight_helper.dart';

class TextStyles {
  static TextStyle font32GrayNormalExtraBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeightHelper.extraBold,
    color: AppColor.grayNormal,
  );

  static TextStyle font32BlueBlack = TextStyle(
    height: 1.4,
    fontSize: 32.sp,
    fontWeight: FontWeightHelper.black,
    color: AppColor.primaryColor,
  );

  static TextStyle font24BlueExtraBold = TextStyle(
    fontSize: 24.h,
    height: 1.6,
    fontWeight: FontWeightHelper.extraBold,
    color: AppColor.primaryColor,
  );

  static TextStyle font18GrayDarkSemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: AppColor.grayDark,
  );

  static TextStyle font16WhiteSemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: Colors.white,
  );

  static TextStyle font14GrayLighteMedium = TextStyle(
    height: 1.7,
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColor.grayLighte,
  );

  static TextStyle font14GrayDarkNormal = TextStyle(
    height: 1.7,
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColor.grayNormal,
  );
  static TextStyle font13BlueRegular = TextStyle(
    height: 1.7,
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColor.primaryColor,
  );

  static TextStyle font13GrayLighteMedium = TextStyle(
    height: 1.7,
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColor.grayLighte,
  );
}
