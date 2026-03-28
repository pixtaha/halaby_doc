import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:halaby_doc/core/helper/spacing.dart';
import 'package:halaby_doc/core/theme/app_color.dart';
import 'package:halaby_doc/core/theme/textstyles.dart';
import 'package:halaby_doc/core/widget/app_text_button.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Spacing.vertical(62),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  'Hi, Pixtaha',
                  style: TextStyles.font24BlueExtraBold.copyWith(
                    color: AppColor.grayLightest,
                  ),
                ),
                Text(
                  'How Are you Today?',
                  style: TextStyles.font13GrayLighteMedium.copyWith(
                    color: AppColor.grayLighter,
                  ),
                ),
              ],
            ),
            CircleAvatar(
              radius: 28.w,
              backgroundColor: AppColor.grayLighter,
              child: SvgPicture.asset(
                'assets/icon/notification-icon.svg',
                width: 24.w,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Book and\nschedule with\nnearest doctor',

                  style: TextStyles.font24BlueExtraBold.copyWith(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.start,
                ),
                Spacing.vertical(16),
                AppTextButton(
                  buttonText: 'Find Nearby',
                  onPressed: () {},
                  backgroundColor: AppColor.grayLighter,
                  buttonWidth: 140,
                  textStyle: TextStyles.font14GrayLighteMedium.copyWith(
                    color: AppColor.primaryColor,
                  ),
                  borderRadius: 100,
                ),
                // Spacing.vertical(24),
              ],
            ),
            Image.asset('assets/image/doctor-home-screen.png', width: 170.w),
          ],
        ),
      ],
    );
  }
}
