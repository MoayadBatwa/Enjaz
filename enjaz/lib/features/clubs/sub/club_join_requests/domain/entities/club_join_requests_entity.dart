import 'package:equatable/equatable.dart';

class ClubJoinRequestsEntity extends Equatable {
   final String id;
  final String name;
  final String email;
  final String userId;
  final String clubId;

  const ClubJoinRequestsEntity({
    required this.id,
    required this.name,
    required this.email,
    required this.userId,
    required this.clubId,
  });

  @override
  List<Object?> get props => [id, name, email, userId, clubId];
}
