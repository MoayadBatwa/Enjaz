import 'package:equatable/equatable.dart';

class EventDetailsEntity extends Equatable {
  final String eventId;
  final String title;
  final String? description;
  final String? mapUrl;
  final DateTime dateAt;
  final String place;
  final int capacity;
  final String startTime;
  final String endTime;
  final bool isOpen;
  final String clubName;
  final String clubLogo;
  final String universityName;
  final int currentCount;
  final String status;
  final bool isEnrolled;

  const EventDetailsEntity({
    required this.eventId,
    required this.title,
    this.description,
    this.mapUrl,
    required this.dateAt,
    required this.place,
    required this.capacity,
    required this.startTime,
    required this.endTime,
    required this.isOpen,
    required this.clubName,
    required this.clubLogo,
    required this.universityName,
    required this.currentCount,
    required this.status,
    required this.isEnrolled,
  });

  @override
  List<Object?> get props => [
    eventId,
    title,
    description,
    mapUrl,
    dateAt,
    place,
    capacity,
    startTime,
    endTime,
    isOpen,
    clubName,
    clubLogo,
    universityName,
    currentCount,
    status,
    isEnrolled,
  ];
}
