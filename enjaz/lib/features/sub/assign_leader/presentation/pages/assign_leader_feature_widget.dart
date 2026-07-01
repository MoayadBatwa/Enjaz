import 'package:enjaz/core/widgets/loading_widget.dart';
import 'package:enjaz/features/sub/assign_leader/presentation/cubit/assign_leader_state.dart';
import 'package:enjaz/features/sub/assign_leader/presentation/pages/dropdown_assign_leader_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:enjaz/features/sub/assign_leader/presentation/cubit/assign_leader_cubit.dart';

class AssignLeaderFeatureWidget extends StatelessWidget {
  const AssignLeaderFeatureWidget({
    super.key,
    required this.clubId,
    required this.onChanged,
    this.isEditing,
  });

  final String clubId;
  final Function(String?) onChanged;
  final bool? isEditing;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          AssignLeaderCubit(GetIt.I.get())
            ..getAssignLeaderMethod(clubId: clubId),
      child: Builder(
        builder: (context) {
          final _ = context.read<AssignLeaderCubit>();
          return BlocBuilder<AssignLeaderCubit, AssignLeaderState>(
            builder: (context, state) {
              if (state is AssignLeaderSuccessState) {
                return DropdownAssignLeaderWidget(
                  items: state.members,
                  hint: 'اختر قائد النادي',
                  isEditing: isEditing,
                  onChanged: (userId) {
                    onChanged(userId);
                  },
                );
              }
              return const LoadingWidget();
            },
          );
        },
      ),
    );
  }
}
