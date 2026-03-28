import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halaby_doc/core/router/routes.dart';
import 'package:halaby_doc/feature/Auth/logic/cubit/auth_cubit.dart';
import 'package:halaby_doc/feature/Auth/ui/view/login_view.dart';
import 'package:halaby_doc/feature/Auth/ui/view/sign_up_view.dart';
import 'package:halaby_doc/feature/Auth/ui/view/successfully_signup.dart';
import 'package:halaby_doc/feature/onboarding/ui/view/onboarding_view.dart';

class AppRouter {
  static Route<dynamic>? generateRoute(RouteSettings setting) {
    // final arguments = setting.arguments;

    switch (setting.name) {
      case Routes.onBoardingScreen:
        return _buildRoute(OnboardingView());
      case Routes.loginScreen:
        return _buildRoute(
          BlocProvider(create: (context) => AuthCubit(), child: LoginView()),
        );
      case Routes.signupScreen:
        return _buildRoute(
          BlocProvider(create: (context) => AuthCubit(), child: SignUpView()),
        );
      case Routes.successfullySignup:
        return _buildRoute(SuccessfullySignup());

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(child: Text('No Route Defined for ${setting.name}')),
          ),
        );
    }
  }

  static Route _buildRoute(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: CurvedAnimation(parent: animation, curve: Curves.easeIn),
          child: child,
        );
      },
      transitionDuration: const Duration(milliseconds: 300),
      reverseTransitionDuration: const Duration(milliseconds: 300),
    );
  }
}
