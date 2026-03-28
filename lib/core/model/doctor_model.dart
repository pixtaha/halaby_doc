class SpecialtyModel {
  final int id;
  final String nameAr;
  final String nameEn;
  final String icon;
  final List<DoctorModel> doctors;

  SpecialtyModel({
    required this.id,
    required this.nameAr,
    required this.nameEn,
    required this.icon,
    required this.doctors,
  });

  factory SpecialtyModel.fromJson(Map<String, dynamic> json) {
    return SpecialtyModel(
      id: json['id'],
      nameAr: json['name_ar'],
      nameEn: json['name_en'],
      icon: json['icon'],
      doctors: (json['doctors'] as List)
          .map((d) => DoctorModel.fromJson(d))
          .toList(),
    );
  }
}

class DoctorModel {
  final int id;
  final String nameAr;
  final String nameEn;
  final String specialtyAr;
  final String specialtyEn;
  final String image;
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
    required this.image,
    required this.clinicPhone,
    required this.clinicAddressAr,
    required this.clinicAddressEn,
    required this.rating,
    required this.reviewsCount,
    required this.reviews,
  });

  factory DoctorModel.fromJson(Map<String, dynamic> json) {
    return DoctorModel(
      id: json['id'],
      nameAr: json['name_ar'],
      nameEn: json['name_en'],
      specialtyAr: json['specialty_ar'],
      specialtyEn: json['specialty_en'],
      image: json['image'],
      clinicPhone: json['clinic_phone'],
      clinicAddressAr: json['clinic_address_ar'],
      clinicAddressEn: json['clinic_address_en'],
      rating: (json['rating'] as num).toDouble(),
      reviewsCount: json['reviews_count'],
      reviews: (json['reviews'] as List)
          .map((r) => ReviewModel.fromJson(r))
          .toList(),
    );
  }
}

class ReviewModel {
  final int id;
  final String reviewer;
  final double rating;
  final String comment;

  ReviewModel({
    required this.id,
    required this.reviewer,
    required this.rating,
    required this.comment,
  });

  factory ReviewModel.fromJson(Map<String, dynamic> json) {
    return ReviewModel(
      id: json['id'],
      reviewer: json['reviewer'],
      rating: (json['rating'] as num).toDouble(),
      comment: json['comment'],
    );
  }
}
