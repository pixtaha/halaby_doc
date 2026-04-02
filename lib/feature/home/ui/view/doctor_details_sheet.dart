import 'package:flutter/material.dart';
import 'package:halaby_doc/core/constant/app_padding.dart';
import 'package:halaby_doc/feature/home/data/models/doctor_model.dart';

class DoctorDetailsSheet extends StatelessWidget {
  final DoctorModel doctor;
  const DoctorDetailsSheet({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.sizeOf(context).width,
      padding: AppPadding.all16,
      child: Column(
        children: [
          Text(doctor.nameEn),
          Text(doctor.specialtyEn),
        ],
      ),
    );
  }
}