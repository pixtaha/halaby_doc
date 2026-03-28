import 'package:flutter/material.dart';
import 'package:halaby_doc/core/helper/spacing.dart';
import 'package:halaby_doc/core/theme/app_color.dart';
import 'package:halaby_doc/core/theme/font_weight_helper.dart';
import 'package:halaby_doc/core/theme/textstyles.dart';

class SwithSignType extends StatelessWidget {
  final String title;
  final String textButtonTitle;
  final VoidCallback onTap;
  const SwithSignType({super.key, required this.title, required this.textButtonTitle, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyles.font13GrayLighteMedium.copyWith(
            color: AppColor.grayNormal,
          ),
        ),
        Spacing.horezontal(4),
        GestureDetector(
          onTap: onTap,
          child: Text(
            textButtonTitle,
            style: TextStyles.font13GrayLighteMedium.copyWith(
              color: AppColor.primaryColor,
              fontWeight: FontWeightHelper.bold,
            ),
          ),
        ),
      ],
    );
  }
}
