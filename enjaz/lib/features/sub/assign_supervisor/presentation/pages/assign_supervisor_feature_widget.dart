import 'package:enjaz/features/sub/create_club/presentation/pages/dropdown_assign_supervisor_widget.dart';
import 'package:enjaz/core/utils/validators.dart';
import 'package:enjaz/features/sub/assign_supervisor/presentation/cubit/assign_supervisor_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:enjaz/features/sub/assign_supervisor/presentation/cubit/assign_supervisor_cubit.dart';

class AssignSupervisorFeatureWidget extends StatelessWidget {
  const AssignSupervisorFeatureWidget({
    super.key,
    required this.assignSupervisor,
    required this.universityId,
  });
  final Function(String?) assignSupervisor;
  final String universityId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          AssignSupervisorCubit(GetIt.I.get())
            ..getAssignSupervisorMethod(universityId: universityId),
      child: Builder(
        builder: (context) {
          final _ = context.read<AssignSupervisorCubit>();
          return BlocBuilder<AssignSupervisorCubit, AssignSupervisorState>(
            builder: (context, state) {
              if (state is AssignSupervisorSuccessState) {
                return DropdownAssignSupervisorWidget(
                  items: state.supervisor,
                  hint: "اختر مشرف للنادي",
                  onChanged: (userId) {
                    assignSupervisor(userId);
                  },
                  validator: Validators.validateRequired,
                );
              }
              return SizedBox.shrink();
            },
          );
        },
      ),
    );
  }
}
