import 'package:enjaz/core/common/models/club_model/club_model.dart';
import 'package:equatable/equatable.dart';

class ClubPlanEntity extends Equatable {
  final String id;
  final ClubModel club;
  final DateTime createdAt;

  const ClubPlanEntity({
    required this.id,
    required this.club,
    required this.createdAt,
  });

  @override
  List<Object?> get props => [id, club, createdAt];
}
