import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halaby_doc/feature/home/data/models/doctor_model.dart';
import 'package:halaby_doc/feature/home/data/repos/doctor_repository.dart';
import 'package:halaby_doc/feature/home/logic/cubit/doctors_state.dart';

class DoctorsCubit extends Cubit<DoctorsState> {
  final DoctorRepository _repository;

  DoctorsCubit(this._repository) : super(DoctorsInitial());

  Future<void> loadDoctors() async {
    emit(DoctorsLoading());
    try {
      final specialties = await _repository.getSpecialties();
      emit(DoctorsLoaded(specialties));
    } catch (e) {
      emit(DoctorsError('فشل تحميل البيانات'));
    }
  }

  void selectDoctor(DoctorModel doctor) {
    final currentState = state;
    emit(DoctorSelected(doctor));
    if (currentState is DoctorsLoaded) {
      emit(currentState); // يرجع الـ list تاني
    }
  }
}
