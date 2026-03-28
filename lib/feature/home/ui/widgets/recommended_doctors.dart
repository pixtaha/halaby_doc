import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:halaby_doc/core/constant/app_padding.dart';
import 'package:halaby_doc/core/helper/spacing.dart';
import 'package:halaby_doc/core/theme/app_color.dart';
import 'package:halaby_doc/core/theme/textstyles.dart';

class RecommendedDoctors extends StatelessWidget {
  const RecommendedDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) => Container(
        padding: AppPadding.all8,
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          color: AppColor.grayLighter.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            width: 1,
            color: AppColor.grayLighter.withValues(alpha: 0.8),
          ),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.all(Radius.circular(12)),
              child: Image.asset('assets/image/DrGhadaEzzElDin.png'),
            ),
            Spacing.horezontal(16),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dr. Randy Wigham',
                  style: TextStyles.font18GrayDarkSemiBold,
                ),
                Spacing.vertical(8),
                Text(
                  'General | RSUD Gatot Subroto',
                  style: TextStyles.font13BlueRegular.copyWith(
                    fontSize: 12,
                    color: AppColor.grayNormal,
                  ),
                ),
                Spacing.vertical(8),
                Row(
                  children: [
                    SvgPicture.asset('assets/icon/star.svg', width: 18.w),
                    Spacing.horezontal(4),
                    Text(
                      '4.8 (4,279 reviews)',
                      style: TextStyles.font13BlueRegular.copyWith(
                        color: AppColor.grayNormal.withValues(alpha: 0.7),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
