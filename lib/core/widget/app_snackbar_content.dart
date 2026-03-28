import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:halaby_doc/core/theme/app_color.dart';
import 'package:halaby_doc/core/theme/textstyles.dart';

class AppSnackBar {
  AppSnackBar._();
  static void show(
    BuildContext context, {
    required String title,
    required String message,
    required ContentType contentType,
    Color? color,
  }) {
    final messanger = ScaffoldMessenger.of(context);
    messanger
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          content: AwesomeSnackbarContent(
            title: title,
            message: message,
            contentType: contentType,
            titleTextStyle: TextStyles.font16WhiteSemiBold.copyWith(
              color: Colors.white,
            ),
            messageTextStyle: TextStyles.font13GrayLighteMedium.copyWith(
              color: AppColor.grayLighter,
            ),
          ),
        ),
      );
  }
}
