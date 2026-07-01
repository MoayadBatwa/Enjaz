import 'package:enjaz/core/common/entities/club_entity/club_entity.dart';
import 'package:enjaz/core/extensions/context_extensions.dart';
import 'package:enjaz/core/extensions/theme_extensions.dart';
import 'package:enjaz/features/clubs/sub/club_edit/presentation/cubit/club_edit_state.dart';
import 'package:enjaz/features/sub/assign_leader/presentation/pages/assign_leader_feature_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:get_it/get_it.dart';
import 'package:enjaz/features/clubs/sub/club_edit/presentation/cubit/club_edit_cubit.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

class ClubEditFeatureWidget extends HookWidget {
  const ClubEditFeatureWidget({
    super.key,
    required this.club,
    required this.isEditing,
  });

  final ClubEntity club;
  final bool? isEditing;

  @override
  Widget build(BuildContext context) {
    final editController = useTextEditingController(text: club.description);
    final assignLeaderController = useTextEditingController();

    return BlocProvider(
      create: (context) =>
          ClubEditCubit(GetIt.I.get())..isUserSupervisor(club.id),
      child: BlocListener<ClubEditCubit, ClubEditState>(
        listener: (context, state) {
          context.hideLoading();
          if (state is ClubEditSuccessState) {
            context.showSnackBar("تم تحديث بيانات النادي بنجاح");
            context.pop();
          }
          if (state is ClubEditLoadingState) {
            context.showLoading();
          }
        },
        child: Builder(
          builder: (context) {
            final cubit = context.read<ClubEditCubit>();
            if (isEditing != null && !isEditing!) {
              if (club.description != editController.text ||
                  assignLeaderController.text.isNotEmpty) {
                cubit.getClubUpdateMethod(
                  edit: editController.text,
                  clubId: club.id,
                  userId: assignLeaderController.text,
                );
              } else {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  context.showSnackBar(
                    "لم يتم تغيير بيانات النادي",
                    isError: true,
                  );
                });
              }
            }
            return Container(
              width: 100.sw,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'نبذة عن النادي:',
                    style: context.theme.textTheme.headlineMedium,
                  ),
                  isEditing ?? false
                      ? TextField(
                          controller: editController,
                          minLines: 4,
                          maxLines: 6,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        )
                      : Text(
                          club.description,
                          style: context.theme.textTheme.bodyLarge,
                        ),
                  BlocBuilder<ClubEditCubit, ClubEditState>(
                    builder: (context, state) {
                      if (cubit.isSupervisor || cubit.user.isAdmin) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'تبديل قائد',
                              style: context.theme.textTheme.headlineMedium,
                            ),
                            const Gap(10),
                            AssignLeaderFeatureWidget(
                              clubId: club.id,
                              isEditing: isEditing ?? false,
                              onChanged: (userId) {
                                assignLeaderController.text = userId ?? '';
                              },
                            ),
                          ],
                        );
                      } else {
                        return const SizedBox.shrink();
                      }
                    },
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
