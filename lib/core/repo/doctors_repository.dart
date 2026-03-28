import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:halaby_doc/core/model/doctor_model.dart';

class DoctorsRepository {
  Future<List<SpecialtyModel>> getSpecialties() async {
    final String response =
        await rootBundle.loadString('assets/data/doctors.json');
    final Map<String, dynamic> data = json.decode(response);

    return (data['specialties'] as List)
        .map((s) => SpecialtyModel.fromJson(s))
        .toList();
  }
}