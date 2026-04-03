import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:halaby_doc/core/helper/extension.dart';
import 'package:halaby_doc/core/widget/app_text_button.dart';
import 'package:halaby_doc/feature/home/ui/widgets/button_sheet/one_patient_review_suggestion.dart';
import 'package:halaby_doc/feature/home/ui/widgets/speciality_title_and_manager.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:halaby_doc/core/constant/app_padding.dart';
import 'package:halaby_doc/core/helper/spacing.dart';
import 'package:halaby_doc/core/theme/app_color.dart';
import 'package:halaby_doc/core/theme/font_weight_helper.dart';
import 'package:halaby_doc/core/theme/textstyles.dart';
import 'package:halaby_doc/feature/home/data/models/doctor_model.dart';

class DoctorDetailsSheet extends StatelessWidget {
  final DoctorModel doctor;
  const DoctorDetailsSheet({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    debugPrint('doctor: ${doctor.nameEn}, rating: ${doctor.rating}');
    return Expanded(
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: 1.sh - 60.h,
        padding: AppPadding.all20,
        child: Column(
          children: [
            SvgPicture.asset('assets/icon/draggable_handle.svg'),
            Spacing.vertical(18),
            DoctorProfilePicture(doctor: doctor),
            Spacing.vertical(16.h),
            Text(
              doctor.nameEn,
              textAlign: TextAlign.center,
              style: TextStyles.font24BlueExtraBold.copyWith(
                fontSize: 20.sp,
                color: AppColor.grayNormal,
              ),
            ),
            Spacing.vertical(12),
            Text(doctor.specialtyEn, style: TextStyles.font14GrayLighteMedium),
            Spacing.vertical(12),
            DoctorRateAndReviews(doctor: doctor),
            Spacing.vertical(16),
            DoctorLocationAndContact(doctor: doctor),
            Spacing.vertical(12),
            SpecialitiyTitleAndManager(title: 'Patient Reviews'),
            Spacing.vertical(12),
            OnePatientReviewSuggestion(doctor: doctor),
            Expanded(child: SizedBox()),
            AppTextButton(
              buttonText: 'Book Appointment',
              onPressed: () {
                context.pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DoctorLocationAndContact extends StatelessWidget {
  const DoctorLocationAndContact({super.key, required this.doctor});

  final DoctorModel doctor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () async {
                final uri = Uri.parse(
                  'https://www.google.com/maps/search/?api=1&query=30.0444,31.2357',
                );
                await launchUrl(uri, mode: LaunchMode.externalApplication);
              },
              radius: 12,
              child: InstractionBoxWithIcon(
                doctor: doctor,
                iconPath: 'assets/icon/locaiton.svg',
                title: 'LOCATION',
                details: doctor.clinicAddressEn,
                height: 145.h,
              ),
            ),
          ),
          Spacing.horezontal(12),
          Expanded(
            child: InkWell(
              radius: 12,
              onTap: () async {
                final uri = Uri.parse('tel:${doctor.clinicPhone}');
                if (await canLaunchUrl(uri)) {
                  await launchUrl(uri, mode: LaunchMode.externalApplication);
                }
              },
              child: InstractionBoxWithIcon(
                doctor: doctor,
                iconPath: 'assets/icon/call.svg',
                title: 'CONTACT',
                details: doctor.clinicPhone,
                height: 145.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class InstractionBoxWithIcon extends StatelessWidget {
  const InstractionBoxWithIcon({
    super.key,
    required this.doctor,
    required this.iconPath,
    required this.title,
    required this.details,
    this.width,
    this.height,
  });

  final DoctorModel doctor;
  final String iconPath;
  final String title;
  final String details;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: AppPadding.all12,
      decoration: AppBoxDecoration.whiteWithShadow(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppRectangleIconWithBackgroundColor(
            iconPath: iconPath,
            backgroundColor: Color(0xff0070EB),
          ),
          Spacing.vertical(12),
          Text(
            title,
            style: TextStyles.font13GrayLighteMedium.copyWith(fontSize: 12.sp),
          ),
          Spacing.vertical(4),
          Text(
            details,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: TextStyles.font18GrayDarkSemiBold.copyWith(fontSize: 14.sp),
          ),
        ],
      ),
    );
  }
}

class AppBoxDecoration {
  static BoxDecoration whiteWithShadow({
    Color? background,
    final double? borderWidt,
    final Color? borderColor,
    final BorderRadius? borderRadius,
  }) {
    return BoxDecoration(
      color: background ?? AppColor.grayLightest,
      borderRadius: borderRadius ?? BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.05),
          blurRadius: 25,
          offset: const Offset(2, 4),
        ),
      ],
      border: Border.all(
        width: borderWidt ?? 1,
        color: borderColor ?? AppColor.grayLighte.withValues(alpha: 0.2),
      ),
    );
  }
}

class AppRectangleIconWithBackgroundColor extends StatelessWidget {
  final String iconPath;
  final Color backgroundColor;
  final double? size;
  const AppRectangleIconWithBackgroundColor({
    super.key,
    required this.iconPath,
    required this.backgroundColor,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPadding.all12,
      decoration: BoxDecoration(
        color: backgroundColor.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      width: size ?? 40.w,
      height: size ?? 40.h,
      child: SvgPicture.asset(iconPath),
    );
  }
}

class DoctorRateAndReviews extends StatelessWidget {
  const DoctorRateAndReviews({super.key, required this.doctor});

  final DoctorModel doctor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPadding.all12,
      // decoration: BoxDecoration(
      //   color: AppColor.grayLightest,
      //   borderRadius: BorderRadius.circular(100),
      //   boxShadow: [
      //     BoxShadow(
      //       color: Colors.black.withValues(alpha: 0.08),
      //       blurRadius: 10,
      //       offset: Offset(2, 4), // لفوق علشان الـ bottom sheet
      //     ),
      //   ],
      // ),
      decoration: AppBoxDecoration.whiteWithShadow(),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset('assets/icon/star.svg'),
          Spacing.horezontal(8),
          Text('${doctor.rating}', style: TextStyles.font18GrayDarkSemiBold),
          Spacing.horezontal(8),
          Text(
            '(${doctor.reviewsCount} Reviews)',
            style: TextStyles.font18GrayDarkSemiBold.copyWith(
              color: AppColor.grayNormal,
              fontWeight: FontWeightHelper.light,
            ),
          ),
        ],
      ),
    );
  }
}

class DoctorProfilePicture extends StatelessWidget {
  const DoctorProfilePicture({super.key, required this.doctor});

  final DoctorModel doctor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPadding.all4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(width: 5, color: AppColor.primaryColor),
      ),
      child: CircularImage(imagePath: doctor.imagePath),
    );
  }
}

class AppRatingBarIndicator extends StatelessWidget {
  final double rating;
  final double? starWidth;
  const AppRatingBarIndicator({
    super.key,
    required this.rating,
    this.starWidth,
  });

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      itemBuilder: (context, index) =>
          Icon(Icons.star, color: AppColor.primaryColor),
      rating: rating,
      unratedColor: AppColor.primaryColor.withValues(alpha: 0.3),
      itemCount: 5,
      itemSize: starWidth ?? 32,
    );
  }
}

class CircularImage extends StatelessWidget {
  final String imagePath;
  final int? imageWidth;
  const CircularImage({super.key, required this.imagePath, this.imageWidth});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        'assets/image/heart.png',
        width: (imageWidth ?? 100.w).toDouble(),
        height: (imageWidth ?? 100.h).toDouble(),
        fit: BoxFit.cover,
      ),
    );
  }
}
