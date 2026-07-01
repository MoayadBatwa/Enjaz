import 'package:enjaz/core/extensions/context_extensions.dart';
import 'package:enjaz/core/extensions/text_theme_extensions.dart';
import 'package:enjaz/core/extensions/theme_extensions.dart';
import 'package:enjaz/core/navigation/routers.dart';
import 'package:enjaz/core/utils/validators.dart';
import 'package:enjaz/core/widgets/logo.dart';
import 'package:enjaz/features/auth/login/presentation/cubit/login_state.dart';
import 'package:enjaz/features/auth/widgets/Button_widget.dart';
import 'package:enjaz/features/auth/widgets/field_widget.dart';
import 'package:enjaz/features/auth/widgets/password_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:enjaz/features/auth/login/presentation/cubit/login_cubit.dart';
import 'package:go_router/go_router.dart';

class LoginFeatureScreen extends HookWidget {
  const LoginFeatureScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginCubit>();
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final autovalidateMode = useState<AutovalidateMode>(
      AutovalidateMode.disabled,
    );

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: BlocListener<LoginCubit, LoginState>(
            listener: (context, state) {
              context.hideLoading();
              switch (state) {
                case LoginLoadingState _:
                  context.showLoading();

                case LoginSuccessState _:
                  context.go(Routes.loading);

                case LoginErrorState _:
                  context.showSnackBar(
                    state.message,
                    isError: true,
                  );
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
                      "تسجيل الدخول",
                      style: context.theme.textTheme.displaySmall,
                    ),

                    Gap(20),

                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(14),
                        child: Form(
                          key: formKey,
                          autovalidateMode: autovalidateMode.value,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: .start,
                            children: [
                              Gap(5),
                              Text(
                                "البريد الإلكتروني",
                                style: context.theme.textTheme.bodyLarge,
                              ),
                              Gap(8),

                              FieldWidget(
                                controller: emailController,
                                icon: Icons.email,
                                validator: Validators.validateEmail,
                              ),

                              Gap(14),
                              Text(
                                "كلمة المرور",
                                style: context.theme.textTheme.bodyLarge,
                              ),
                              Gap(8),
                              PasswordFieldWidget(
                                controller: passwordController,
                                validator: Validators.validatePassword,
                              ),

                              TextButton(
                                onPressed: () {
                                  context.push(Routes.forgotPassword);
                                },
                                child: Text(
                                  "نسيت كلمة المرور؟",
                                  style: context.linkPrimary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Gap(20),
                    ButtonWidget(
                      title: 'تسجيل الدخول',
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          cubit.getLoginMethod(
                            email: emailController.text,
                            password: passwordController.text,
                          );
                        } else {
                          autovalidateMode.value =
                              AutovalidateMode.onUserInteraction;
                        }
                      },
                    ),
                    Gap(16),

                    GestureDetector(
                      onTap: () => context.go(Routes.signup),
                      child: RichText(
                        text: TextSpan(
                          style: context.linkPrimary,
                          text: "ليس لديك حساب؟ ",
                          children: [
                            TextSpan(
                              text: "إنشاء حساب",
                              style: context.linkSecondary,
                            ),
                          ],
                        ),
                      ),
                    ),
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
