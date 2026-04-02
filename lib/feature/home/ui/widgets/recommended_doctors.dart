import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halaby_doc/core/theme/app_color.dart';
import 'package:halaby_doc/feature/home/logic/cubit/doctors_cubit.dart';
import 'package:halaby_doc/feature/home/logic/cubit/doctors_state.dart';
import 'package:halaby_doc/feature/home/ui/view/doctor_details_sheet.dart';
import 'package:halaby_doc/feature/home/ui/widgets/doctors_list.dart';

class RecommendedDoctors extends StatelessWidget {
  const RecommendedDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DoctorsCubit, DoctorsState>(
      listener: (context, state) {
        if (state is DoctorSelected) {
          showModalBottomSheet(
            context: context,
            barrierColor: AppColor.primaryColor.withValues(alpha: 0.2),
            builder: (_) => DoctorDetailsSheet(doctor: state.doctor),
          );
        }
      },
      builder: (context, state) {
        if (state is DoctorsLoaded) {
          return DoctorsList(
            doctors: state.allDoctors,
            specialties: state.specialties,
          );
        } else if (state is DoctorsLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is DoctorsError) {
          return Center(child: Text(state.message));
        }
        return SizedBox();
      },
    );
  }
}
