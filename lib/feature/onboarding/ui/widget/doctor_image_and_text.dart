import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:halaby_doc/core/theme/textstyles.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          top: 0,
          child: SvgPicture.asset('assets/icon/halaby_logo_low_opacity.svg'),
        ),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.white.withValues(alpha: 0)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.2, 0.4],
            ),
          ),
          child: Image.asset('assets/image/onboarding_doctor.png'),
        ),
        Positioned(
          bottom: 30,
          child: Text(
            'Best Doctor\nAppointment App',
            textAlign: TextAlign.center,
            style: TextStyles.font32Weight900blue,
          ),
        ),
      ],
    );
  }
}
