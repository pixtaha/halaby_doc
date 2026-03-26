import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:halaby_doc/core/helper/spacing.dart';
import 'package:halaby_doc/core/theme/app_color.dart';
import 'package:halaby_doc/core/theme/textstyles.dart';
import 'package:halaby_doc/core/widget/app_text_button.dart';
import 'package:halaby_doc/core/widget/app_text_form_field.dart';
import 'package:halaby_doc/feature/Auth/ui/widget/already_have_account_text.dart';
import 'package:halaby_doc/feature/Auth/ui/widget/terms_and_conditions_text.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 34.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacing.vertical(40),
                Text('Welcome Back', style: TextStyles.font24BlueExtraBold),
                Spacing.vertical(8),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.font14GrayLighteMedium,
                ),
                Spacing.vertical(56),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      AppTextFormField(hintText: 'Email'),
                      Spacing.vertical(16),
                      AppTextFormField(
                        hintText: 'Password',
                        isObscureText: isObscureText,
                        suffixIcon: visibilitySuffixIcon(),
                      ),

                      Spacing.vertical(12),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          'Forgot Password?',
                          style: TextStyles.font13BlueRegular,
                        ),
                      ),
                      Spacing.vertical(42),
                      AppTextButton(
                        buttonText: 'Login',
                        textStyle: TextStyles.font16WhiteSemiBold,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                Spacing.vertical(152.h),
                TermsAndConditionsText(),
                Spacing.vertical(16),
                AlreadyHaveAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector visibilitySuffixIcon() {
    return GestureDetector(
      onTap: () {
        setState(() {
          isObscureText = !isObscureText;
        });
      },
      child: Icon(
        color: isObscureText ? AppColor.primaryColor : AppColor.grayLighte,
        isObscureText
            ? Icons.visibility_off_outlined
            : Icons.visibility_outlined,
      ),
    );
  }
}
