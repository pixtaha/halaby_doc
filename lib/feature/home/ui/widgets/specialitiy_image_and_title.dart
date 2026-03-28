import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:halaby_doc/core/helper/spacing.dart';
import 'package:halaby_doc/core/theme/app_color.dart';
import 'package:halaby_doc/core/theme/textstyles.dart';

class SpecialitiyImageAndTitle extends StatelessWidget {
  final String categoryId;
  final String categoryName;
  const SpecialitiyImageAndTitle({
    super.key,
    required this.categoryId,
    required this.categoryName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 32.r,
          backgroundColor: AppColor.grayLighter,
          child: Image.asset('assets/image/$categoryId.png'),
        ),
        Spacing.vertical(12),
        Text(
          categoryName,
          style: TextStyles.font13BlueRegular.copyWith(
            color: AppColor.grayDark,
          ),
        ),
      ],
    );
  }
}