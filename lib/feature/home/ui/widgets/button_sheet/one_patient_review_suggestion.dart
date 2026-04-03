import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:halaby_doc/core/constant/app_padding.dart';
import 'package:halaby_doc/core/helper/spacing.dart';
import 'package:halaby_doc/core/theme/textstyles.dart';
import 'package:halaby_doc/feature/home/data/models/doctor_model.dart';
import 'package:halaby_doc/feature/home/ui/view/doctor_details_sheet.dart';

class OnePatientReviewSuggestion extends StatelessWidget {
  const OnePatientReviewSuggestion({super.key, required this.doctor});

  final DoctorModel doctor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPadding.all12,
      decoration: BoxDecoration(
        color: Color(0xFFF3F3F8),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppRatingBarIndicator(
                rating: doctor.reviews[1].rating,
                starWidth: 20.w,
              ),
              Row(
                children: [
                  Text(doctor.reviews[1].reviewer),
                  Spacing.horezontal(8),
                  CircleAvatar(
                    backgroundColor: Color(0xFFE0DFE4),
                    child: Text(
                      'AE',
                      style: TextStyles.font16WhiteSemiBold.copyWith(
                        color: Color(0xFF626267),
                      ),
                    ),
                  ),
                  Spacing.horezontal(8),
                ],
              ),
            ],
          ),
          Text(
            doctor.reviews[1].comment,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}