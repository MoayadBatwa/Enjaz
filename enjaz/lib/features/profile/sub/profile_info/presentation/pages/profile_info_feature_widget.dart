import 'package:enjaz/core/extensions/context_extensions.dart';
import 'package:enjaz/core/navigation/routers.dart';
import 'package:enjaz/core/services/user_service.dart';
import 'package:enjaz/features/auth/signup/presentation/widgets/dropdown_signup_widget.dart';
import 'package:enjaz/features/profile/domain/entities/profile_entity.dart';
import 'package:enjaz/features/profile/sub/profile_info/presentation/cubit/profile_info_state.dart';
import 'package:enjaz/features/profile/sub/profile_info/presentation/widgets/profile_drop_menu.dart';
import 'package:enjaz/features/profile/sub/profile_info/presentation/widgets/profile_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:get_it/get_it.dart';
import 'package:enjaz/features/profile/sub/profile_info/presentation/cubit/profile_info_cubit.dart';
import 'package:go_router/go_router.dart';

class ProfileInfoFeatureWidget extends HookWidget {
  const ProfileInfoFeatureWidget({super.key, required this.profile});
  final ProfileEntity profile;

  @override
  Widget build(BuildContext context) {
    final user = GetIt.I<UserService>();

    final TextEditingController nameController = useTextEditingController(
      text: profile.name,
    );
    final TextEditingController phoneNumberController =
        useTextEditingController(text: profile.phoneNumber);
    final TextEditingController emailController = useTextEditingController(
      text: profile.email,
    );
    final TextEditingController universityController = useTextEditingController(
      text: profile.universities.name,
    );
    final TextEditingController majorController = useTextEditingController(
      text: profile.majors.id,
    );
    final TextEditingController genderController = useTextEditingController(
      text: profile.gender,
    );

    bool isEditing = false;

    return BlocProvider(
      create: (context) => ProfileInfoCubit(GetIt.I.get()),
      child: Builder(
        builder: (context) {
          final cubit = context.read<ProfileInfoCubit>();
          return Scaffold(
            appBar: AppBar(title: Text("الملف الشخصي")),
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: StatefulBuilder(
                          builder: (context, setState) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Gap(16),
                                ProfileTextField(
                                  label: "الإسم",
                                  controller: nameController,
                                  isEditing: isEditing,
                                ),
                                Gap(30),
                                ProfileTextField(
                                  label: "رقم الجوال",
                                  controller: phoneNumberController,
                                  isEditing: isEditing,
                                ),
                                Gap(30),
                                ProfileTextField(
                                  label: "الإيميل",
                                  controller: emailController,
                                ),

                                if (!user.isAdmin) ...[
                                  Gap(30),
                                  ProfileTextField(
                                    label: "الجامعة",
                                    controller: universityController,
                                  ),

                                  if (user.isStudent) ...[
                                    Gap(18),
                                    Text("التخصص"),
                                    Gap(5),
                                    BlocBuilder<
                                      ProfileInfoCubit,
                                      ProfileInfoState
                                    >(
                                      builder: (context, state) {
                                        if (state is ProfileInfoSuccessState) {
                                          return DropdownSignupWidget(
                                            items: state.majors,
                                            hint: 'اختر تخصصك',
                                            onChanged: (majorId) {
                                              majorController.text =
                                                  majorId ?? profile.majors.id;
                                            },
                                            initialValue: profile.majors.id,
                                            isEditing: isEditing,
                                          );
                                        }
                                        return SizedBox.shrink();
                                      },
                                    ),
                                    Gap(18),
                                    Text("الجنس"),
                                    Gap(5),
                                    ProfileDropMenu(
                                      controller: genderController,
                                      isEditing: isEditing,
                                      categories: [' ذكر', 'أنثى'],
                                    ),
                                  ],
                                ],

                                Gap(24),
                                Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () async {
                                          if (isEditing) {
                                            bool isChanged =
                                                nameController.text !=
                                                    profile.name ||
                                                phoneNumberController.text !=
                                                    profile.phoneNumber ||
                                                majorController.text !=
                                                    profile.majors.id ||
                                                genderController.text !=
                                                    profile.gender;

                                            if (isChanged) {
                                              await cubit
                                                  .getProfileUpdateMethod(
                                                    name: nameController.text,
                                                    major: majorController.text,
                                                    gender:
                                                        genderController.text,
                                                    phoneNumber:
                                                        phoneNumberController
                                                            .text,
                                                  );

                                              if (context.mounted) {
                                                context.go(Routes.loading);
                                              }
                                            } else {
                                              context.showSnackBar(
                                                "لم تقم بتعديل أي بيانات",
                                                isError: true,
                                              );
                                            }

                                            isEditing = false;
                                            setState(() {});
                                          } else {
                                            isEditing = true;
                                            setState(() {});
                                          }
                                        },
                                        child: Text(
                                          isEditing
                                              ? "حفظ التعديلات"
                                              : "تعديل الملف الشخصي",
                                        ),
                                      ),

                                      if (isEditing) ...[
                                        Gap(12),

                                        ElevatedButton(
                                          onPressed: () {
                                            nameController.text = profile.name;
                                            phoneNumberController.text =
                                                profile.phoneNumber;
                                            majorController.text =
                                                profile.majors.id;
                                            genderController.text =
                                                profile.gender;

                                            isEditing = false;
                                            setState(() {});
                                          },
                                          child: Text("إلغاء"),
                                        ),
                                      ],
                                    ],
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
