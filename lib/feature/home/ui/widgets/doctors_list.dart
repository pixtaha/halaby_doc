import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:halaby_doc/core/constant/app_padding.dart';
import 'package:halaby_doc/core/helper/spacing.dart';
import 'package:halaby_doc/core/theme/app_color.dart';
import 'package:halaby_doc/core/theme/textstyles.dart';
import 'package:halaby_doc/feature/home/data/models/doctor_model.dart';

class DoctorsList extends StatelessWidget {
  final List<DoctorModel> doctors;
  const DoctorsList({super.key, required this.doctors});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: doctors.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) => Container(
        padding: AppPadding.all8,
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          color: AppColor.grayLighter.withValues(alpha: 0.25),
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            width: 1,
            color: AppColor.grayLighter.withValues(alpha: 0.2),
          ),
        ),
        child: Row(
          // CrossAxisAlignment start for: when have Long Name or discription ,image positined start.
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.all(Radius.circular(12)),
              child: Image.asset(
                'assets/image/heart.png',
                fit: BoxFit.cover,
                width: 100.w,
                height: 100.w,
              ),
            ),
            Spacing.horezontal(16),
            Expanded(
              child: Padding(
                padding: AppPadding.v8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dr. Mahmoud Alaa',
                      maxLines: 2, // أقصى عدد سطور
                      overflow: TextOverflow.ellipsis,
                      // 'test',
                      style: TextStyles.font18GrayDarkSemiBold,
                    ),
                    Spacing.vertical(8),
                    Text(
                      'General | RSUD Gatot Subroto',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyles.font13BlueRegular.copyWith(
                        color: AppColor.grayNormal,
                      ),
                    ),
                    Spacing.vertical(8),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icon/star.svg',
                          width: 18.w,
                        ),
                        Spacing.horezontal(4),
                        Text(
                          '4.8 (4,279 reviews)',
                          style: TextStyles.font13BlueRegular.copyWith(
                            color: AppColor.grayNormal.withValues(
                              alpha: 0.7,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}