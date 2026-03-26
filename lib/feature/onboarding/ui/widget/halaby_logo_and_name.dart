import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:halaby_doc/core/theme/textstyles.dart';

class HalabyLogoAndName extends StatelessWidget {
  const HalabyLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/icon/halaby_logo.svg', width: 46),
        SizedBox(width: 10.h),
        Text('Halapy', style: TextStyles.font32Weight800grayNormal),
      ],
    );
  }
}
