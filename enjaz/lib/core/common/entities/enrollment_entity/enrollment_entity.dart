import 'package:equatable/equatable.dart';

class EnrollmentEntity extends Equatable {
  final String id;
  final String userId;
  final String eventId;

  const EnrollmentEntity({
    required this.id,
    required this.userId,
    required this.eventId,
  });

  @override
  List<Object?> get props => [id, userId, eventId];
}
