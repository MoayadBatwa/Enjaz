import 'package:enjaz/core/extensions/context_extensions.dart';
import 'package:enjaz/core/extensions/theme_extensions.dart';
import 'package:enjaz/core/navigation/routers.dart';
import 'package:enjaz/core/utils/validators.dart';
import 'package:enjaz/core/widgets/logo.dart';
import 'package:enjaz/features/auth/forgot_password/presentation/cubit/forgot_password_cubit.dart';
import 'package:enjaz/features/auth/forgot_password/presentation/cubit/forgot_password_state.dart';
import 'package:enjaz/features/auth/widgets/Button_widget.dart';
import 'package:enjaz/features/auth/widgets/field_widget.dart';
import 'package:enjaz/features/auth/widgets/password_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class ResetPasswordScreen extends HookWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ForgotPasswordCubit>();
    final pass1 = useTextEditingController();
    final pass2 = useTextEditingController();
    final formKey = useMemoized(() => GlobalKey<FormState>());

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: BlocListener<ForgotPasswordCubit, ForgotPasswordState>(
            listener: (context, state) {
              context.hideLoading();
              switch (state) {
                case ForgotPasswordLoadingState _:
                  context.showLoading();
                  break;

                case ForgotPasswordSuccessState _:
                  context.showSnackBar(
                    "تم تحديث كلمة المرور بنجاح.",
                    isError: false,
                  );
                  context.go(Routes.login);
                  break;

                case ForgotPasswordErrorState _:
                  context.showSnackBar(state.message, isError: true);
                  break;
                default:
              }
            },
            child: SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Gap(50),
                    Logo(),
                    Gap(50),

                    Text(
                      "تغيير كلمة المرور",
                      style: context.theme.textTheme.displaySmall,
                    ),

                    Gap(20),

                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(14),
                        child: Form(
                          key: formKey,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Gap(5),
                              Text(
                                "كلمة المرور الجديدة",
                                style: context.theme.textTheme.bodyLarge,
                              ),
                              Gap(8),

                              PasswordFieldWidget(
                                controller: pass1,
                                validator: Validators.validatePassword,
                              ),

                              Gap(14),
                              Text(
                                "تأكيد كلمة المرور",
                                style: context.theme.textTheme.bodyLarge,
                              ),
                              Gap(8),

                              PasswordFieldWidget(
                                controller: pass2,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "الرجاء تأكيد كلمة المرور";
                                  }
                                  if (value != pass1.text) {
                                    return "كلمتا المرور غير متطابقتين";
                                  }
                                  return null;
                                },
                              ),
                              Gap(5),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Gap(20),
                    ButtonWidget(
                      title: 'تحديث كلمة المرور',
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          cubit.resetPassword(pass1.text);
                        }
                      },
                    ),
                    Gap(16),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
