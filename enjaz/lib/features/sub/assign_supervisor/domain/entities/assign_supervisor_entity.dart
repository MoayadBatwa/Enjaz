import 'package:enjaz/features/sub/assign_supervisor/domain/entities/user_information_view_entity.dart';
import 'package:equatable/equatable.dart';

class AssignSupervisorEntity extends Equatable {
  final String role;
  final UserInformationViewEntity users;

  const AssignSupervisorEntity({required this.role, required this.users});

  @override
  List<Object?> get props => [role, users];
}
