import 'package:enjaz/core/extensions/context_extensions.dart';
import 'package:enjaz/core/extensions/theme_extensions.dart';
import 'package:enjaz/core/utils/validators.dart';
import 'package:enjaz/core/widgets/logo.dart';
import 'package:enjaz/features/auth/forgot_password/presentation/cubit/forgot_password_cubit.dart';
import 'package:enjaz/features/auth/forgot_password/presentation/cubit/forgot_password_state.dart';
import 'package:enjaz/features/auth/widgets/Button_widget.dart';
import 'package:enjaz/features/auth/widgets/field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

class ForgotPasswordFeatureScreen extends HookWidget {
  const ForgotPasswordFeatureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ForgotPasswordCubit>();
    final emailController = useTextEditingController();
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

                case ForgotPasswordEmailSentState _:
                  context.showSnackBar(
                    "تم إرسال رابط إعادة التعيين إلى بريدك الإلكتروني بنجاح.",
                    isError: false,
                  );
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
                      "استعادة كلمة المرور",
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
                                "البريد الإلكتروني",
                                style: context.theme.textTheme.bodyLarge,
                              ),
                              Gap(8),

                              FieldWidget(
                                controller: emailController,
                                icon: Icons.email,
                                validator: Validators.validateEmail,
                              ),
                              Gap(5),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Gap(20),
                    ButtonWidget(
                      title: 'إرسال رابط إعادة التعيين',
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          cubit.sendEmail(emailController.text.trim());
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
