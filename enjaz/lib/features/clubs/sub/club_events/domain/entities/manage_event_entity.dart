import 'package:equatable/equatable.dart';

class ManageEventEntity extends Equatable {
  final String? id;
  final String title;
  final String description;
  final DateTime dateAt;
  final String place;
  final int capacity;
  final DateTime? createdAt;
  final String planId;
  final String? mapUrl;
  final String startTime;
  final String endTime;
  final bool? isOpen;
  final String? status;

  const ManageEventEntity({
    this.id,
    required this.title,
    required this.description,
    required this.dateAt,
    required this.place,
    required this.capacity,
    this.createdAt,
    required this.planId,
    required this.startTime,
    required this.endTime,
    this.mapUrl,
    this.isOpen,
    this.status,
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
    mapUrl,
    isOpen,
    status
  ];
}
