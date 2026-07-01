import 'package:enjaz/core/extensions/context_extensions.dart';
import 'package:enjaz/core/extensions/theme_extensions.dart';
import 'package:enjaz/core/navigation/routers.dart';
import 'package:enjaz/features/sub/signout/presentation/cubit/signout_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:get_it/get_it.dart';
import 'package:enjaz/features/sub/signout/presentation/cubit/signout_cubit.dart';
import 'package:go_router/go_router.dart';

class SignoutFeatureWidget extends StatelessWidget {
  const SignoutFeatureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignoutCubit(GetIt.I.get()),
      child: Builder(
        builder: (context) {
          final cubit = context.read<SignoutCubit>();
          return BlocListener<SignoutCubit, SignoutState>(
            listener: (context, state) {
              if (state is SignoutSuccessState) {
                context.go(Routes.login);
              }
              if (state is SignoutErrorState) {
                context.showSnackBar(state.message, isError: true);
              }
            },
            child: ListTile(
              contentPadding: EdgeInsets.only(right: 5),
              leading: Icon(
                Icons.login_outlined,
                color: Colors.redAccent,
                size: 24,
              ),
              title: Text(
                "تسجيل خروج",
                style: context.theme.textTheme.titleLarge,
              ),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (dialogContext) {
                    return Dialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "هل أنت متأكد من تسجبل الخروج",
                              textAlign: TextAlign.center,
                            ),
                            Gap(10),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    side: BorderSide(
                                      width: 1,
                                      color: Colors.red,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    backgroundColor: Colors.white,
                                    surfaceTintColor: Colors.red,
                                  ),
                                  onPressed: () {
                                    cubit.getSignoutMethod();
                                  },
                                  child: Text(
                                    "تسجيل خروج",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(dialogContext);
                                  },
                                  child: Text("إلغاء"),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}
