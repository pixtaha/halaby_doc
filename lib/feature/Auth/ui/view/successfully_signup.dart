import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halaby_doc/core/constant/app_padding.dart';
import 'package:halaby_doc/core/helper/extension.dart';
import 'package:halaby_doc/core/helper/spacing.dart';
import 'package:halaby_doc/core/theme/textstyles.dart';
import 'package:halaby_doc/core/widget/app_text_button.dart';
import 'package:halaby_doc/feature/home/ui/view/home_view.dart';

class SuccessfullySignup extends StatelessWidget {
  const SuccessfullySignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: AppPadding.screen,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: AppPadding.h12,
                child: SvgPicture.asset('assets/icon/successfully_icon.svg'),
              ),
              Spacing.vertical(24),
              Text('Account Created!', style: TextStyles.font24BlueExtraBold),
              Spacing.vertical(8),
              Text(
                'Your account has been successfully created',
                style: TextStyles.font13GrayLighteMedium,
              ),
              Spacing.vertical(24),
              AppTextButton(
                buttonText: 'Continue',
                onPressed: () => context.pushAndRemoveUntil(HomeView()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
