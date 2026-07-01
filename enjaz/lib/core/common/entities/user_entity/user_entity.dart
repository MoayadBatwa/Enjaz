import 'package:enjaz/core/common/entities/university_entity/university_entity.dart';
import 'package:enjaz/features/auth/signup/domain/major_entities/major_entity.dart';
import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String id;
  final String authId;
  final String name;
  final String email;
  final String phoneNumber;
  final String gender;
  final String role;
  final MajorEntity major;
  final UniversityEntity university;
  final String createdAt;
  final String avatarType;

  const UserEntity({
    required this.id,
    required this.authId,
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.gender,
    required this.role,
    required this.major,
    required this.university,
    required this.createdAt,
    required this.avatarType,
  });

  @override
  List<Object?> get props => [
    id,
    authId,
    name,
    email,
    phoneNumber,
    gender,
    role,
    major,
    university,
    createdAt,
    avatarType,
  ];
}
