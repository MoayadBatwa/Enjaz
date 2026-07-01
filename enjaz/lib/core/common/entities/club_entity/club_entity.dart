import 'package:enjaz/core/common/models/university_model/university_model.dart';
import 'package:equatable/equatable.dart';

class ClubEntity extends Equatable {
  final String id;
  final UniversityModel university;
  final String name;
  final String description;
  final String logoUrl;
  final String createdAt;

  const ClubEntity({
    required this.id,
    required this.university,
    required this.name,
    required this.description,
    required this.logoUrl,
    required this.createdAt,
  });

  @override
  List<Object?> get props => [
    id,
    university,
    name,
    description,
    logoUrl,
    createdAt,
  ];
}
