import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:halaby_doc/core/constant/app_padding.dart';
import 'package:halaby_doc/core/helper/spacing.dart';
import 'package:halaby_doc/core/theme/app_color.dart';
import 'package:halaby_doc/feature/home/logic/cubit/doctors_cubit.dart';
import 'package:halaby_doc/feature/home/logic/cubit/doctors_state.dart';
import 'package:halaby_doc/feature/home/ui/widgets/hero_section.dart';
import 'package:halaby_doc/feature/home/ui/widgets/doctor_specialities.dart';
import 'package:halaby_doc/feature/home/ui/widgets/recommended_doctors.dart';
import 'package:halaby_doc/feature/home/ui/widgets/speciality_title_and_manager.dart';

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
            Padding(
              padding: AppPadding.h20,
              child: Column(
                children: [
                  Spacing.vertical(24),
                  DoctorSpecialities(),
                  Spacing.vertical(32),
                  SpecialitiyTitleAndManager(title: 'Recommendation Doctor'),
                  Spacing.vertical(0),
                  RecommendedDoctors()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
