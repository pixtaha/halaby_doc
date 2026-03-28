import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:halaby_doc/core/helper/extension.dart';
import 'package:halaby_doc/core/helper/spacing.dart';
import 'package:halaby_doc/core/theme/app_color.dart';
import 'package:halaby_doc/core/theme/textstyles.dart';
import 'package:halaby_doc/core/widget/app_snackbar_content.dart';
import 'package:halaby_doc/core/widget/app_text_button.dart';
import 'package:halaby_doc/core/widget/app_text_form_field.dart';
import 'package:halaby_doc/feature/Auth/logic/cubit/auth_cubit.dart';
import 'package:halaby_doc/feature/Auth/ui/view/successfully_signup.dart';
import 'package:halaby_doc/feature/Auth/ui/widget/swith_sign_type.dart';
import 'package:halaby_doc/feature/Auth/ui/widget/terms_and_conditions_text.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AuthCubit>();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 34.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacing.vertical(40),
                Text('Create Account', style: TextStyles.font24BlueExtraBold),
                Spacing.vertical(8),
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: TextStyles.font14GrayLighteMedium,
                ),
                Spacing.vertical(56),
                BlocListener<AuthCubit, AuthState>(
                  listener: (context, state) {
                    if (state is LoadingCreateAccountState) {
                      AppSnackBar.show(
                        context,
                        title: 'Loading...',
                        message: 'Creating your account now',
                        contentType: ContentType.success,
                        color: AppColor.primaryColor.withValues(alpha: 0.4),
                      );
                    } else if (state is SuccessCreateAccountState) {
                      AppSnackBar.show(
                        context,
                        title: 'Successed Login',
                        message:
                            'You now can ask Dr Halaby any Question from Here',
                        contentType: ContentType.success,
                      );
                      context.pushAndRemoveUntil(SuccessfullySignup());
                    } else if (state is ErrorCreateAccountState) {
                      AppSnackBar.show(
                        context,
                        title: 'Rejected Sign Up',
                        message: 'You can Sign up now ,we will fix this soon',
                        contentType: ContentType.warning,
                      );
                    }
                  },
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        AppTextFormField(
                          hintText: 'Email',
                          controller: cubit.createAccountEmailController,
                        ),
                        Spacing.vertical(16),
                        AppTextFormField(
                          hintText: 'Password',
                          isObscureText: isObscureText,
                          suffixIcon: visibilitySuffixIcon(),
                          controller: cubit.createAccountPasswordController,
                        ),
                        Spacing.vertical(60),
                        AppTextButton(
                          buttonText: 'Sign Up',
                          onPressed: () {
                            cubit.createAccount();
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Spacing.vertical(152.h),
                TermsAndConditionsText(),
                Spacing.vertical(16),
                SwithSignType(
                  title: 'I\'m Haven\'t Account',
                  textButtonTitle: 'Sign In',
                  onTap: () {
                    context.pop();
                  },
                ),
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
