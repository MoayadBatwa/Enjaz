import 'package:equatable/equatable.dart';

class ClubMembersEntity extends Equatable {
  final String id;
  final String name;
  final String email;
  final String role;
  final String avatar;

  const ClubMembersEntity({
    required this.id,
    required this.name,
    required this.email,
    required this.role,
    required this.avatar,
  });

  @override
  List<Object?> get props => [id, email, name, role, avatar];
}
