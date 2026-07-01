import 'dart:async';
import 'package:enjaz/core/extensions/context_extensions.dart';
import 'package:enjaz/core/extensions/theme_extensions.dart';
import 'package:enjaz/core/navigation/routers.dart';
import 'package:enjaz/core/widgets/logo.dart';
import 'package:enjaz/features/auth/otp/presentation/cubit/otp_state.dart';
import 'package:enjaz/features/auth/otp/presentation/cubit/otp_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpFeatureScreen extends HookWidget {
  const OtpFeatureScreen({
    super.key,
    required this.userData,
    required this.userEmail,
  });
  final String userEmail;
  final Map<String, dynamic> userData;
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<OtpCubit>();
    final timerRef = useRef<Timer?>(null);
    final seconds = useState(120);
    final canResend = useState(false);

    void startTimer() {
      timerRef.value?.cancel();

      seconds.value = 120;
      canResend.value = false;

      timerRef.value = Timer.periodic(const Duration(seconds: 1), (timer) {
        if (seconds.value == 0) {
          canResend.value = true;
          timer.cancel();
        } else {
          seconds.value--;
        }
      });
    }

    useEffect(() {
      startTimer();

      return () {
        timerRef.value?.cancel();
      };
    }, []);
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: BlocListener<OtpCubit, OtpState>(
          listener: (context, state) {
            if (state is OtpLoadingState) {
              context.showLoading();
            } else {
              context.hideLoading();
            }

            if (state is OtpSuccessState) {
              context.go(Routes.loading);
            }

            if (state is OtpErrorState) {
              context.showSnackBar("رمز التحقق غير صحيح", isError: true);
            }
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                Gap(50),
                Logo(),
                Gap(50),

                Text(
                  "رمز التحقق",
                  style: context.theme.textTheme.displayMedium,
                ),
                Gap(20),

                Card(
                  child: Padding(
                    padding: EdgeInsets.all(14),
                    child: Column(
                      children: [
                        Gap(20),
                        Text(
                          "أدخل الرمز المرسل إلى بريدك",
                          style: context.theme.textTheme.bodyLarge,
                        ),
                        Gap(5),
                        Text(
                          userEmail,
                          style: context.theme.textTheme.displaySmall,
                        ),

                        Gap(20),

                        PinInput(
                          length: 6,
                          builder: (context, cells) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: cells.map((cell) {
                                return Container(
                                  width: 40,
                                  height: 40,
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.surface,
                                    border: Border.all(
                                      color: cell.isFocused
                                          ? Theme.of(
                                              context,
                                            ).colorScheme.primary
                                          : Theme.of(context).dividerColor,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Center(
                                    child: Text(cell.character ?? ''),
                                  ),
                                );
                              }).toList(),
                            );
                          },

                          onCompleted: (pin) {
                            cubit.verifyOtp(
                              email: userEmail,
                              token: pin,
                              userData: userData,
                            );
                          },
                        ),

                        Gap(20),

                        TextButton(
                          onPressed: canResend.value
                              ? () async {
                                  await cubit.resendOtp(userEmail);
                                  startTimer();
                                }
                              : null,
                          child: Text(
                            canResend.value
                                ? "إعادة إرسال الكود"
                                : "إعادة الإرسال بعد ${seconds.value} ثانية",
                            style: context.theme.textTheme.bodyMedium,
                          ),
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
    );
  }
}
