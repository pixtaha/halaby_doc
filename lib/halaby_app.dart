import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:halaby_doc/core/router/routes.dart';
import 'package:halaby_doc/core/router/routes_constants.dart';

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
        // home: OnboardingView(),
        // home: HomeView(),
        initialRoute: Routes.homeScreen,
      ),
    );
  }
}
