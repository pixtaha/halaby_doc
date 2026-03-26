import 'package:flutter/material.dart';
import 'package:halaby_doc/core/theme/app_color.dart';
import 'package:halaby_doc/core/theme/textstyles.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our ',
            style: TextStyles.font13GrayLighteMedium,
          ),
          TextSpan(
            text: 'Terms & Conditions ',
            style: TextStyles.font13GrayLighteMedium.copyWith(
              color: AppColor.grayNormal,
            ),
          ),
          TextSpan(text: 'and ', style: TextStyles.font13GrayLighteMedium),
          TextSpan(
            text: 'PrivacyPolicy.',
            style: TextStyles.font13GrayLighteMedium.copyWith(
              color: AppColor.grayNormal,
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}