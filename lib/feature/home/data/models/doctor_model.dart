

import 'package:flutter/material.dart';
import 'package:halaby_doc/feature/home/data/models/review_model.dart';

class DoctorModel {
  final int id;
  final String nameAr;
  final String nameEn;
  final String specialtyAr;
  final String specialtyEn;
  final String imageUrl;
  final String imagePath;
  final String clinicPhone;
  final String clinicAddressAr;
  final String clinicAddressEn;
  final double rating;
  final int reviewsCount;
  final List<ReviewModel> reviews;

  DoctorModel({
    required this.id,
    required this.nameAr,
    required this.nameEn,
    required this.specialtyAr,
    required this.specialtyEn,
    required this.imageUrl,
    required this.imagePath,
    required this.clinicPhone,
    required this.clinicAddressAr,
    required this.clinicAddressEn,
    required this.rating,
    required this.reviewsCount,
    required this.reviews,
  });

  factory DoctorModel.fromJson(Map<String, dynamic> json) {
    debugPrint('raw rating: ${json['rating']}');
    return DoctorModel(
      id: json['id'],
      nameAr: json['name_ar'],
      nameEn: json['name_en'],
      specialtyAr: json['specialty_ar'],
      specialtyEn: json['specialty_en'],
      imageUrl: json['image'],
      imagePath: json['image_path'],
      clinicPhone: json['clinic_phone'],
      clinicAddressAr: json['clinic_address_ar'],
      clinicAddressEn: json['clinic_address_en'],
      // rating: double.parse((json['rating'] as num).toDouble().toStringAsFixed(1).substring(0, 3)),
      rating: (json['rating'] as num).toDouble(),
      reviewsCount: json['reviews_count'],
      reviews: (json['reviews'] as List)
          .map((e) => ReviewModel.fromJson(e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name_ar': nameAr,
      'name_en': nameEn,
      'specialty_ar': specialtyAr,
      'specialty_en': specialtyEn,
      'image': imageUrl,
      'image_path': imagePath,
      'clinic_phone': clinicPhone,
      'clinic_address_ar': clinicAddressAr,
      'clinic_address_en': clinicAddressEn,
      'rating': rating,
      'reviews_count': reviewsCount,
      'reviews': reviews.map((e) => e.toJson()).toList(),
    };
  }
}


