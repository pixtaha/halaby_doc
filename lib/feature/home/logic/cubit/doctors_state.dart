import 'package:halaby_doc/core/model/doctor_model.dart';

abstract class DoctorsState {}

class DoctorsInitial extends DoctorsState {}

class DoctorsLoading extends DoctorsState {}

class DoctorsLoaded extends DoctorsState {
  final List<SpecialtyModel> specialties;
  DoctorsLoaded(this.specialties);
}

class DoctorsError extends DoctorsState {
  final String message;
  DoctorsError(this.message);
}