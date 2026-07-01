import 'package:equatable/equatable.dart';

class ArchivedClubEventsEntity extends Equatable {
  final String id;
  final String title;
  final String description;
  final DateTime dateAt;
  final String place;
  final int capacity;
  final String createdAt;
  final String planId;
  final String startTime;
  final String endTime;
  final bool isOpen;
  final String status;
  final String? mapUrl;
  final bool hasReport;

  const ArchivedClubEventsEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.dateAt,
    required this.place,
    required this.capacity,
    required this.createdAt,
    required this.planId,
    required this.startTime,
    required this.endTime,
    required this.isOpen,
    required this.status,
    required this.mapUrl,
    required this.hasReport,
  });

  @override
  List<Object?> get props => [
    id,
    title,
    description,
    dateAt,
    place,
    capacity,
    createdAt,
    planId,
    startTime,
    endTime,
    isOpen,
    status,
    mapUrl,
    hasReport,
  ];
}
