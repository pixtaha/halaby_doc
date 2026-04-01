import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:halaby_doc/feature/home/data/models/specialty_model.dart';

class DoctorRepository {
  Future<List<SpecialtyModel>> getSpecialties() async {
    final String response = await rootBundle.loadString(
      'assets/data/doctors.json',
    );

    final Map<String, dynamic> data = jsonDecode(response);

    return (data['specialties'] as List)
        .map((e) => SpecialtyModel.fromJson(e))
        .toList();
  }
}
