import 'package:enjaz/core/constants/app_colors.dart';
import 'package:enjaz/core/extensions/context_extensions.dart';
import 'package:enjaz/core/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:get_it/get_it.dart';
import 'package:enjaz/features/clubs/sub/delete_member/presentation/cubit/delete_member_cubit.dart';
import 'package:enjaz/features/clubs/sub/delete_member/presentation/cubit/delete_member_state.dart';

class DeleteMemberFeatureWidget extends StatelessWidget {
  final String clubId;
  final String userId;
  final VoidCallback onDeleted;

  const DeleteMemberFeatureWidget({
    super.key,
    required this.clubId,
    required this.userId,
    required this.onDeleted,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DeleteMemberCubit(GetIt.I.get()),
      child: BlocListener<DeleteMemberCubit, DeleteMemberState>(
        listener: (context, state) {
          if (state is DeleteMemberSuccessState) {
            Navigator.pop(context);
            onDeleted();
          }
          if (state is DeleteMemberErrorState) {
            context.showSnackBar(state.message, isError: true);
          }
        },
        child: BlocBuilder<DeleteMemberCubit, DeleteMemberState>(
          builder: (context, state) {
            final cubit = context.read<DeleteMemberCubit>();
            return Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "هل أنت متأكد من حذف العضو؟",
                    textAlign: TextAlign.center,
                  ),
                  Gap(10),
                  if (state is DeleteMemberLoadingState)
                    LoadingWidget()
                  else
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            side: BorderSide(width: 1, color: Colors.red),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: Colors.white,
                            surfaceTintColor: Colors.red,
                          ),
                          onPressed: () {
                            cubit.deleteMemberMethod(
                              clubId: clubId,
                              userId: userId,
                            );
                          },
                          child: Text(
                            "حذف",
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("إلغاء"),
                        ),
                      ],
                    ),
                  if (state is DeleteMemberErrorState)
                    Padding(
                      padding: EdgeInsets.all(12),
                      child: Text(
                        state.message,
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
