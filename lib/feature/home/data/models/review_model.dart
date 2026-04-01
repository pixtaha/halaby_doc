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

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'reviewer': reviewer,
      'rating': rating,
      'comment': comment,
    };
  }
}