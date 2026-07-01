import 'package:enjaz/admin_features/manage_club/presentation/cubit/manage_club_state.dart';
import 'package:enjaz/core/extensions/context_extensions.dart';

import 'package:enjaz/core/widgets/loading_widget.dart';
import 'package:enjaz/features/clubs/presentation/widgets/club_widget.dart';
import 'package:enjaz/features/sub/create_club/presentation/cubit/create_club_cubit.dart';
import 'package:enjaz/features/sub/create_club/presentation/pages/create_club_feature_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:enjaz/admin_features/manage_club/presentation/cubit/manage_club_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

class ManageClubFeatureScreen extends StatelessWidget {
  const ManageClubFeatureScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ManageClubCubit>();

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return BlocProvider(
                  create: (context) => CreateClubCubit(GetIt.I.get()),
                  child: const CreateClubFeatureScreen(),
                );
              },
            ),
          );
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(title: const Text('الأندية')),
      body: BlocListener<ManageClubCubit, ManageClubState>(
        listener: (context, state) {
          if (state is ManageClubDeleteSuccessState) {
            context.showSnackBar('تم حذف النادي', isError: false);
            cubit.getManageClubMethod();
          }
          if (state is ManageClubErrorState) {
            context.showSnackBar(state.message, isError: true);
          }
        },
        child: BlocBuilder<ManageClubCubit, ManageClubState>(
          buildWhen: (previous, current) {
            if (current is ManageClubErrorState) {
              return false;
            }
            return true;
          },
          builder: (context, state) {
            if (state is ManageClubSuccessState) {
              final previousLocation = GoRouter.of(context).state.uri.path;
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: ClubWidget(
                  clubs: state.clubs,
                  location: previousLocation,
                  onDelete: (id) {
                    cubit.getDeleteClubsMethod(clubId: id);
                  },
                ),
              );
            }
            return LoadingWidget();
          },
        ),
      ),
    );
  }
}
