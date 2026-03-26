import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Spacing {
  static SizedBox vertical(double val) => SizedBox(height: val.h);
  static SizedBox horezontal(double val) => SizedBox(width: val.w);
}
