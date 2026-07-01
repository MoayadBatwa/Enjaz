import 'package:enjaz/core/extensions/context_extensions.dart';
import 'package:enjaz/core/navigation/routers.dart';
import 'package:enjaz/core/widgets/loading_widget.dart';
import 'package:enjaz/features/loading/presentation/cubit/loading_cubit.dart';
import 'package:enjaz/features/loading/presentation/cubit/loading_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoadingFeatureScreen extends StatelessWidget {
  const LoadingFeatureScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final _ = context.read<LoadingCubit>();

    return Scaffold(
      appBar: AppBar(),
      body: BlocListener<LoadingCubit, LoadingState>(
        listener: (context, state) {
          context.hideLoading();

          switch (state) {
            case LoadingCheckingState():
              context.showLoading();
              break;

            case LoadingSuccessState():
              if (state.isLogging.isLogin) {
                context.go(Routes.clubs);
              } else {
                context.go(Routes.login);
              }
              break;

            default:
              context.go(Routes.login);
          }
        },
        child: LoadingWidget(),
      ),
    );
  }
}
