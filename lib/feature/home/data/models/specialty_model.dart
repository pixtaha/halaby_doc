import 'package:halaby_doc/feature/home/data/models/doctor_model.dart';

class SpecialtyModel {
  final int id;
  final String nameAr;
  final String nameEn;
  final String iconUrl;
  final List<DoctorModel> doctors;

  SpecialtyModel({
    required this.id,
    required this.nameAr,
    required this.nameEn,
    required this.iconUrl,
    required this.doctors,
  });

  factory SpecialtyModel.fromJson(Map<String, dynamic> json) {
    return SpecialtyModel(
      id: json['id'],
      nameAr: json['name_ar'],
      nameEn: json['name_en'],
      iconUrl: json['icon'],
      doctors: (json['doctors'] as List)
          .map((e) => DoctorModel.fromJson(e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name_ar': nameAr,
      'name_en': nameEn,
      'icon': iconUrl,
      'doctors': doctors.map((e) => e.toJson()).toList(),
    };
  }
}