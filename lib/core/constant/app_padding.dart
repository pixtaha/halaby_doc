import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract final class AppPadding {
  // Symmetric Horizontal
  static EdgeInsets h4 = EdgeInsets.symmetric(horizontal: 4.w);
  static EdgeInsets h8 = EdgeInsets.symmetric(horizontal: 8.w);
  static EdgeInsets h12 = EdgeInsets.symmetric(horizontal: 12.w);
  static EdgeInsets h16 = EdgeInsets.symmetric(horizontal: 16.w);
  static EdgeInsets h20 = EdgeInsets.symmetric(horizontal: 20.w);
  static EdgeInsets h24 = EdgeInsets.symmetric(horizontal: 24.w);
  static EdgeInsets h32 = EdgeInsets.symmetric(horizontal: 32.w);

  // Symmetric Vertical
  static EdgeInsets v4 = EdgeInsets.symmetric(vertical: 4.w);
  static EdgeInsets v8 = EdgeInsets.symmetric(vertical: 8.w);
  static EdgeInsets v12 = EdgeInsets.symmetric(vertical: 12.w);
  static EdgeInsets v16 = EdgeInsets.symmetric(vertical: 16.w);
  static EdgeInsets v20 = EdgeInsets.symmetric(vertical: 20.w);
  static EdgeInsets v24 = EdgeInsets.symmetric(vertical: 24.w);
  static EdgeInsets v32 = EdgeInsets.symmetric(vertical: 32.w);

  // All
  static EdgeInsets all4 = EdgeInsets.all(4.r);
  static EdgeInsets all8 = EdgeInsets.all(8.r);
  static EdgeInsets all12 = EdgeInsets.all(12.r);
  static EdgeInsets all16 = EdgeInsets.all(16.r);
  static EdgeInsets all20 = EdgeInsets.all(20.r);
  static EdgeInsets all24 = EdgeInsets.all(24.r);
  static EdgeInsets all32 = EdgeInsets.all(32.r);

  // Screen horizontal padding
  static EdgeInsets screen = EdgeInsets.symmetric(horizontal: 20.w);
  static EdgeInsets screenWithVertical = EdgeInsets.symmetric(
    horizontal: 20.w,
    vertical: 16.h,
  );
}