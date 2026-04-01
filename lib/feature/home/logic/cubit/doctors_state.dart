import 'package:halaby_doc/feature/home/data/models/doctor_model.dart';
import 'package:halaby_doc/feature/home/data/models/specialty_model.dart';

abstract class DoctorsState {}

class DoctorsInitial extends DoctorsState {}

class DoctorsLoading extends DoctorsState {}

class DoctorsLoaded extends DoctorsState {
  final List<SpecialtyModel> specialties;
  DoctorsLoaded(this.specialties);
  List<DoctorModel> get allDoctors =>
      specialties.expand((element) => element.doctors).toList();
}

class DoctorSelected extends DoctorsState {
  final DoctorModel doctor;
  DoctorSelected(this.doctor);
}

class DoctorsError extends DoctorsState {
  final String message;
  DoctorsError(this.message);
}
