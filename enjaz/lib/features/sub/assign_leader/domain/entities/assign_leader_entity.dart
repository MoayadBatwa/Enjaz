import 'package:enjaz/features/sub/assign_supervisor/domain/entities/user_information_view_entity.dart';
import 'package:equatable/equatable.dart';

class AssignLeaderEntity extends Equatable {
  final String role;
  final UserInformationViewEntity usersInformationView;

  const AssignLeaderEntity({
    required this.role,
    required this.usersInformationView,
  });

  @override
  List<Object?> get props => [role, usersInformationView];
}
