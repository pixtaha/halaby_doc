import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:halaby_doc/core/helper/extension.dart';
import 'package:halaby_doc/core/helper/spacing.dart';
import 'package:halaby_doc/core/router/routes.dart';
import 'package:halaby_doc/core/theme/textstyles.dart';
import 'package:halaby_doc/core/widget/app_text_button.dart';
import 'package:halaby_doc/feature/Auth/logic/cubit/auth_cubit.dart';
import 'package:halaby_doc/feature/onboarding/ui/widget/doctor_image_and_text.dart';
import 'package:halaby_doc/feature/onboarding/ui/widget/halaby_logo_and_name.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
            child: Column(
              children: [
                const HalabyLogoAndName(),
                Spacing.vertical(52),
                const DoctorImageAndText(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.w),
                  child: Column(
                    children: [
                      Text(
                        'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                        textAlign: TextAlign.center,
                        style: TextStyles.font13GrayLighteMedium,
                      ),
                      Spacing.vertical(42),
                      // const GetStartedButton(),
                      AppTextButton(
                        buttonText: 'GetStarted',
                        onPressed: () {
                          context.pushNamed(Routes.loginScreen);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
