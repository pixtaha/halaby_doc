import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:halaby_doc/core/router/routes_constants.dart';
import 'package:halaby_doc/core/theme/textstyles.dart';
import 'package:halaby_doc/feature/onboarding/ui/widget/doctor_image_and_text.dart';
import 'package:halaby_doc/feature/onboarding/ui/widget/get_started_button.dart';
import 'package:halaby_doc/feature/onboarding/ui/widget/halaby_logo_and_name.dart';

class HalabyApp extends StatelessWidget {
  final AppRouter appRouter;
  const HalabyApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) => MaterialApp(
        title: 'Halaby',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'Vietnam',
          scaffoldBackgroundColor: Colors.white,
        ),
        onGenerateRoute: AppRouter.generateRoute,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
                child: Column(
                  children: [
                    const HalabyLogoAndName(),
                    SizedBox(height: 52.h),
                    const DoctorImageAndText(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32.w),
                      child: Column(
                        children: [
                          Text(
                            'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                            textAlign: TextAlign.center,
                            style: TextStyles.font12Weight500GrayLighter,
                          ),
                          SizedBox(height: 30.h),
                          const GetStartedButton(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
