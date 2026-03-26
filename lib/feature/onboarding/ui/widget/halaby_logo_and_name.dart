import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:halaby_doc/core/helper/spacing.dart';
import 'package:halaby_doc/core/theme/textstyles.dart';

class HalabyLogoAndName extends StatelessWidget {
  const HalabyLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/icon/halaby_logo.svg', width: 46),
        Spacing.vertical(10),
        Text('Halapy', style: TextStyles.font32GrayNormalExtraBold),
      ],
    );
  }
}
