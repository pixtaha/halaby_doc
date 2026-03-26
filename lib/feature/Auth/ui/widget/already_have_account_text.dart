import 'package:flutter/material.dart';
import 'package:halaby_doc/core/helper/spacing.dart';
import 'package:halaby_doc/core/theme/app_color.dart';
import 'package:halaby_doc/core/theme/font_weight_helper.dart';
import 'package:halaby_doc/core/theme/textstyles.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an account yet?',
          style: TextStyles.font13GrayLighteMedium.copyWith(
            color: AppColor.grayNormal,
          ),
        ),
        Spacing.horezontal(4),
        GestureDetector(
          onTap: () {},
          child: Text(
            'Sign Up',
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