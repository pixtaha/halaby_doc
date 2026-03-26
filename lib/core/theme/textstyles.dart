import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:halaby_doc/core/theme/app_color.dart';

class TextStyles {
  static TextStyle font32Weight800grayNormal = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w800,
    color: AppColor.grayNormal,
  );
  static TextStyle font32Weight900blue = TextStyle(
    height: 1.4,
    fontSize: 32.sp,
    fontWeight: FontWeight.w900,
    color: AppColor.primaryColor,
  );
  static TextStyle font16Weight600Wite = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight(600),
    color: Colors.white,
  );
  static TextStyle font12Weight500GrayLighter = TextStyle(
    height: 1.7,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    color: AppColor.grayLighter,
  );
}
