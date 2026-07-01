import 'package:equatable/equatable.dart';

class UniversityStatEntity extends Equatable {
  final String code;
  final int clubCount;
  final int eventCount;
  final int memberCount;
  final int enrollmentCount;
  final double capacityUtilization;

  const UniversityStatEntity({
    required this.code,
    required this.clubCount,
    required this.eventCount,
    required this.memberCount,
    required this.enrollmentCount,
    required this.capacityUtilization,
  });

  @override
  List<Object?> get props => [
    code,
    clubCount,
    eventCount,
    memberCount,
    enrollmentCount,
    capacityUtilization,
  ];
}
