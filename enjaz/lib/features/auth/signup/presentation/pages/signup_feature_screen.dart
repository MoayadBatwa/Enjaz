import 'package:enjaz/core/extensions/context_extensions.dart';
import 'package:enjaz/core/extensions/section_theme_extension.dart';
import 'package:enjaz/core/extensions/text_theme_extensions.dart';
import 'package:enjaz/core/extensions/theme_extensions.dart';
import 'package:enjaz/core/navigation/routers.dart';
import 'package:enjaz/core/utils/validators.dart';
import 'package:enjaz/core/widgets/logo.dart';
import 'package:enjaz/features/auth/signup/presentation/cubit/signup_cubit.dart';
import 'package:enjaz/features/auth/signup/presentation/cubit/signup_state.dart';
import 'package:enjaz/features/auth/signup/presentation/widgets/dropdown_signup_widget.dart';
import 'package:enjaz/features/auth/signup/presentation/widgets/gender_widget.dart';
import 'package:enjaz/features/auth/widgets/button_widget.dart';
import 'package:enjaz/features/auth/widgets/field_widget.dart';
import 'package:enjaz/features/auth/widgets/password_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

class SignupFeatureScreen extends HookWidget {
  const SignupFeatureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SignupCubit>();

    final nameController = useTextEditingController();
    final phoneController = useTextEditingController();
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final gender = useState<String>('');
    final universityId = useState<String>('');
    final majorId = useState<String>('');
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final autovalidateMode = useState<AutovalidateMode>(
      AutovalidateMode.disabled,
    );

    useEffect(() {
      cubit.loadData();
      return null;
    }, []);

    return Scaffold(
      body: BlocListener<SignupCubit, SignupState>(
        listener: (context, state) {
          switch (state) {
            case SignupLoadingState _:
              context.showLoading();
              break;

            case SignupSuccessState _:
              context.hideLoading();

              context.push(
                Routes.otp,
                extra: {
                  "email": emailController.text,
                  "userData": {
                    "name": nameController.text,
                    "email": emailController.text,
                    "phone_number": '966${phoneController.text}',
                    "gender": gender.value,
                    "role": "student",
                    "majors_id": majorId.value,
                    "university_id": universityId.value,
                  },
                },
              );
              break;

            case SignupErrorState _:
              context.hideLoading();
              context.showSnackBar(state.message, isError: true);
              break;

            default:
              break;
          }
        },
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Gap(50),
                  Logo(),
                  Gap(50),
                  Text(
                    "إنشاء حساب",
                    style: context.theme.textTheme.displaySmall,
                  ),

                  Gap(20),

                  Form(
                    key: formKey,
                    autovalidateMode: autovalidateMode.value,
                    child: Column(
                      children: [
                        Card(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 100.sw,
                                padding: EdgeInsets.symmetric(vertical: 14),
                                decoration: BoxDecoration(
                                  color: context.sectionTheme.backgroundColor,
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(12),
                                  ),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "المعلومات الشخصية",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: context.sectionTheme.textColor,
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(14),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Gap(8),

                                    Gap(8),

                                    FieldWidget(
                                      controller: nameController,
                                      icon: Icons.person,
                                      validator: Validators.validateName,
                                      title: "الاسم",
                                    ),

                                    Gap(16),

                                    FieldWidget(
                                      controller: phoneController,
                                      icon: Icons.phone,
                                      isNumber: true,
                                      validator: Validators.validatePhone,
                                      title: "رقم الهاتف",
                                    ),

                                    Text(
                                      "الجنس",
                                      style: context.theme.textTheme.bodyLarge,
                                    ),

                                    Gap(8),

                                    GenderSelectorWidget(
                                      onChanged: (value) {
                                        gender.value = value;
                                      },
                                    ),

                                    Gap(26),

                                    FieldWidget(
                                      controller: emailController,
                                      icon: Icons.email,
                                      validator: Validators.validateEmail,
                                      title: "البريد الإلكتروني",
                                    ),

                                    Gap(16),
                                    PasswordFieldWidget(
                                      controller: passwordController,
                                      validator: Validators.validatePassword,
                                      title: "كلمة المرور",
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        Gap(20),

                        BlocBuilder<SignupCubit, SignupState>(
                          builder: (context, state) {
                            final universities = cubit.universities;
                            final majors = cubit.majors;

                            return Card(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 7.sh,
                                    width: 100.sw,
                                    padding: EdgeInsets.symmetric(vertical: 14),
                                    decoration: BoxDecoration(
                                      color:
                                          context.sectionTheme.backgroundColor,
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(12),
                                      ),
                                    ),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "معلومات الجامعة",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                          color: context.sectionTheme.textColor,
                                        ),
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Column(
                                      children: [
                                        Gap(8),
                                        DropdownSignupWidget(
                                          items: universities,
                                          validator:
                                              Validators.validateUniversity,
                                          hint: "اختر الجامعة",
                                          onChanged: (value) {
                                            universityId.value = value ?? '';
                                          },
                                        ),

                                        Gap(16),

                                        DropdownSignupWidget(
                                          items: majors,
                                          validator: Validators.validateMajor,

                                          hint: "اختر التخصص",
                                          onChanged: (value) {
                                            majorId.value = value ?? '';
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),

                        Gap(20),

                        ButtonWidget(
                          title: "إنشاء حساب",
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              context.read<SignupCubit>().getSignupMethod(
                                email: emailController.text,
                                password: passwordController.text,
                                name: nameController.text,
                                phone: phoneController.text,
                                gender: gender.value,
                                majorId: majorId.value,
                                universityId: universityId.value,
                              );
                            } else {
                              autovalidateMode.value =
                                  AutovalidateMode.onUserInteraction;
                            }
                          },
                        ),

                        Gap(16),

                        GestureDetector(
                          onTap: () => context.go(Routes.login),
                          child: RichText(
                            text: TextSpan(
                              style: context.linkPrimary,
                              text: " لديك حساب؟ ",
                              children: [
                                TextSpan(
                                  text: "سجل دخول",
                                  style: context.linkSecondary,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Gap(20),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
