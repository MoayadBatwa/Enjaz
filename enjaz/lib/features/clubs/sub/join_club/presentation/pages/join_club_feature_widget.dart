import 'package:enjaz/core/extensions/context_extensions.dart';
import 'package:enjaz/features/clubs/sub/join_club/presentation/cubit/join_club_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:enjaz/features/clubs/sub/join_club/presentation/cubit/join_club_cubit.dart';

class JoinClubFeatureWidget extends StatelessWidget {
  const JoinClubFeatureWidget({super.key, required this.clubId});

  final String clubId;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return BlocProvider(
      create: (context) => JoinClubCubit(GetIt.I.get()),

      child: BlocListener<JoinClubCubit, JoinClubState>(
        listener: (context, state) {
          if (state is JoinClubErrorState) {
            context.showSnackBar(state.message, isError: true);
          }

          if (state is JoinClubSuccessState) {
            context.showSnackBar(state.message, isError: false);
          }
        },

        child: BlocBuilder<JoinClubCubit, JoinClubState>(
          builder: (context, state) {
            if (state is JoinClubLoadingState) {
              return SizedBox(
                width: size.width > size.height
                    ? size.height * 0.20
                    : size.height * 0.10,
                height: size.height * 0.04,
                child: Center(
                  child: SizedBox(
                    width: 18,
                    height: 18,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
                ),
              );
            }

            return FilledButton(
              style: FilledButton.styleFrom(
                fixedSize: Size(
                  size.width > size.height
                      ? size.height * 0.20
                      : size.height * 0.10,
                  size.height * 0.04,
                ),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),

              onPressed: () {
                context.read<JoinClubCubit>().joinClub(clubId: clubId);
              },

              child: FittedBox(child: Center(child: Text("انضمام"))),
            );
          },
        ),
      ),
    );
  }
}
