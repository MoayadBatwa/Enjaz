import 'package:equatable/equatable.dart';

class EventEntity extends Equatable {
  final String id;
  final String title;
  final String description;
  final DateTime dateAt;
  final String place;
  final int capacity;
  final DateTime createdAt;
  final String plan;
  final String mapUrl;
  final String startTime;
  final String endTime;
  final bool isOpen;
  final String status;

  const EventEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.dateAt,
    required this.place,
    required this.capacity,
    required this.createdAt,
    required this.plan,
    required this.startTime,
    required this.endTime,
    required this.isOpen,
    required this.status,
    required this.mapUrl,
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
    plan,
    startTime,
    endTime,
    isOpen,
    status,
    mapUrl
  ];
}
