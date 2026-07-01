import 'package:equatable/equatable.dart';

class ClubEditEntity extends Equatable {
  final int id;
  final String firstName;
  final String lastName;

  const ClubEditEntity({
    required this.id,
    required this.firstName,
    required this.lastName,
  });

  @override
  List<Object?> get props => [firstName, lastName, id];
}
