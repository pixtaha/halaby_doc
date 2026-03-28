import 'package:flutter/material.dart';
import 'package:halaby_doc/core/theme/app_color.dart';
import 'package:halaby_doc/core/theme/textstyles.dart';

class SpecialitiyTitleAndManager extends StatelessWidget {
  final String title;
  const SpecialitiyTitleAndManager({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyles.font18GrayDarkSemiBold),
        GestureDetector(
          onTap: () {},
          child: Text(
            'See All',
            style: TextStyles.font13BlueRegular.copyWith(
              color: AppColor.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
