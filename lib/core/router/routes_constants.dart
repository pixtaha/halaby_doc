import 'package:flutter/material.dart';
import 'package:halaby_doc/core/router/routes.dart';
import 'package:halaby_doc/feature/Auth/ui/view/login_view.dart';
import 'package:halaby_doc/feature/onboarding/ui/view/onboarding_view.dart';

class AppRouter {
  static Route<dynamic>? generateRoute(RouteSettings setting) {
    // final arguments = setting.arguments;

    switch (setting.name) {
      case Routes.onBoardingScreen:
        return _buildRoute(OnboardingView());
      case Routes.loginScreen:
        return _buildRoute(LoginView());

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
