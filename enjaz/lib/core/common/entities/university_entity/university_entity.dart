import 'package:equatable/equatable.dart';

class UniversityEntity extends Equatable {
  final String id;
  final String name;
  final String description;
  final String location;
  final String branch;
  final String gender;
  final String createdAt;

  const UniversityEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.location,
    required this.branch,
    required this.gender,
    required this.createdAt,
  });

  @override
  List<Object?> get props => [
    id,
    name,
    description,
    location,
    branch,
    gender,
    createdAt,
  ];
}
