import 'package:flutter/material.dart';
import 'package:halaby_doc/core/helper/extension.dart';
import 'package:halaby_doc/core/router/routes.dart';
import 'package:halaby_doc/core/theme/app_color.dart';
import 'package:halaby_doc/core/theme/textstyles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(AppColor.primaryColor),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStateProperty.all(const Size(double.infinity, 50)),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
      child: Text('Get Started', style: TextStyles.font16Weight600Wite),
    );
  }
}
