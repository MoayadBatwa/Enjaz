import 'package:equatable/equatable.dart';

class ViewReportEntity extends Equatable {
  final String id;
  final String attendance;
  final String challenges;
  final String recommendations;
  final DateTime createdAt;
  final String file;
  final String eventId;
  final String eventName;

  const ViewReportEntity({
    required this.id,
    required this.attendance,
    required this.challenges,
    required this.recommendations,
    required this.file,
    required this.eventId,
    required this.eventName,
    required this.createdAt,
  });

  @override
  List<Object?> get props => [
    id,
    attendance,
    challenges,
    recommendations,
    createdAt,
    file,
    eventId,
    eventName,
  ];
}
