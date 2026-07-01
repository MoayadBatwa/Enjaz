import 'package:enjaz/core/common/models/university_model/university_model.dart';
import 'package:enjaz/features/auth/signup/data/major_models/major_model.dart';
import 'package:equatable/equatable.dart';

class ProfileEntity extends Equatable {
  final String id;
  final String phoneNumber;
  final String authId;
  final String name;
  final String email;
  final String createdAt;
  final String role;
  final UniversityModel universities;
  final MajorModel majors;
  final String gender;

  const ProfileEntity({
    required this.id,
    required this.authId,
    required this.name,
    required this.email,
    required this.createdAt,
    required this.role,
    required this.universities,
    required this.majors,
    required this.gender, required this.phoneNumber,
  });

  @override
  List<Object?> get props => [
    id,
    authId,
    name,
    email,
    createdAt,
    role,
    universities,
    majors,
    gender,
  ];
}
