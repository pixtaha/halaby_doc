import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halaby_doc/core/repo/doctors_repository.dart';
import 'doctors_state.dart';

class DoctorsCubit extends Cubit<DoctorsState> {
  final DoctorsRepository _repository;

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
}