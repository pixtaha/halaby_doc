import 'package:flutter/material.dart';
import 'package:halaby_doc/core/constant/app_padding.dart';
import 'package:halaby_doc/core/helper/spacing.dart';
import 'package:halaby_doc/feature/home/ui/widgets/specialitiy_image_and_title.dart';
import 'package:halaby_doc/feature/home/ui/widgets/speciality_title_and_manager.dart';

class DoctorSpecialities extends StatelessWidget {
  const DoctorSpecialities({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SpecialitiyTitleAndManager(title: 'Doctor Speciality'),
        Spacing.vertical(12),
        Padding(
          padding: AppPadding.h8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SpecialitiyImageAndTitle(
                categoryId: 'general',
                categoryName: 'General',
              ),
              SpecialitiyImageAndTitle(
                categoryId: 'neurology',
                categoryName: 'Neurology',
              ),
              SpecialitiyImageAndTitle(
                categoryId: 'pediatrics',
                categoryName: 'Pediatrics',
              ),
              SpecialitiyImageAndTitle(
                categoryId: 'radiology',
                categoryName: 'Radiology',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

