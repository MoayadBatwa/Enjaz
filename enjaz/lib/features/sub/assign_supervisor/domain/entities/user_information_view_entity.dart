import 'package:equatable/equatable.dart';

class UserInformationViewEntity extends Equatable {
  final String id;
  final String name;
  final String role;
  final String email;
  final String gender;
  final String createdAt;
  final String majorName;
  final String phoneNumber;
  final String universityName;

  const UserInformationViewEntity({
    required this.id,
    required this.name,
    required this.role,
    required this.email,
    required this.gender,
    required this.createdAt,
    required this.majorName,
    required this.phoneNumber,
    required this.universityName,
  });

  @override
  List<Object?> get props => [
    universityName,
    phoneNumber,
    majorName,
    createdAt,
    gender,
    email,
    role,
    name,
    id,
  ];
}
