import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:halaby_doc/core/constant/app_padding.dart';
import 'package:halaby_doc/core/helper/spacing.dart';
import 'package:halaby_doc/core/theme/app_color.dart';
import 'package:halaby_doc/core/theme/textstyles.dart';
import 'package:halaby_doc/core/widget/app_text_button.dart';
import 'package:halaby_doc/feature/home/ui/view/hero_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: AppPadding.screen,
              height: 365.h,
              width: MediaQuery.sizeOf(context).width.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(32.r),
                  bottomRight: Radius.circular(32.r),
                ),
                color: AppColor.primaryColor,
              ),
              child: HeroSection(),
            ),
            Spacing.vertical(24),
            Padding(
              padding: AppPadding.h20,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Doctor Speciality',
                        style: TextStyles.font18GrayDarkSemiBold,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'See All',
                          style: TextStyle(color: AppColor.primaryColor),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
