import 'package:enjaz/core/extensions/context_extensions.dart';
import 'package:enjaz/core/extensions/theme_extensions.dart';
import 'package:enjaz/core/utils/validators.dart';
import 'package:enjaz/features/auth/signup/presentation/widgets/dropdown_signup_widget.dart';
import 'package:enjaz/features/auth/widgets/Button_widget.dart';
import 'package:enjaz/features/auth/widgets/field_widget.dart';
import 'package:enjaz/features/sub/assign_supervisor/presentation/pages/assign_supervisor_feature_widget.dart';
import 'package:enjaz/features/sub/create_club/presentation/cubit/create_club_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:enjaz/features/sub/create_club/presentation/cubit/create_club_cubit.dart';

class CreateClubFeatureScreen extends HookWidget {
  const CreateClubFeatureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final clubNameController = useTextEditingController();
    final universityNameController = useTextEditingController();
    final supervisorController = useTextEditingController();
    final descriptionNameController = useTextEditingController();
    final autovalidateMode = useState<AutovalidateMode>(
      AutovalidateMode.disabled,
    );
    final cubit = context.read<CreateClubCubit>();
    useEffect(() {
      cubit.getLoadData();
      return null;
    }, []);

    return Scaffold(
      appBar: AppBar(title: Text("إضافة نادي")),
      body: SafeArea(
        child: SingleChildScrollView(
          child: BlocListener<CreateClubCubit, CreateClubState>(
            listener: (context, state) {
              context.hideLoading();

              if (state is CreateClubLoadingState) {
                context.showLoading();
              }
              if (state is CreateClubSuccessState) {
                context.showSnackBar("تم إنشاء النادي بنجاح", isError: false);
                Navigator.pop(context, true);
              }
              if (state is CreateClubErrorState) {
                context.showSnackBar(state.message, isError: true);
              }
            },
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                children: [
                  Gap(20),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(14),
                      child: Form(
                        key: formKey,
                        autovalidateMode: autovalidateMode.value,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Gap(5),

                            Gap(15),
                            Text(
                              "اسم النادي",
                              style: context.theme.textTheme.bodyLarge,
                            ),
                            Gap(8),
                            FieldWidget(
                              controller: clubNameController,
                              isNumber: false,
                              validator: Validators.validateName,
                            ),
                            Gap(10),
                            Text(
                              "الوصف",
                              style: context.theme.textTheme.bodyLarge,
                            ),
                            Gap(8),
                            FieldWidget(
                              controller: descriptionNameController,
                              isNumber: false,
                              validator: Validators.validateRequired,
                            ),
                            Gap(10),
                            Text(
                              "الجامعة",
                              style: context.theme.textTheme.bodyLarge,
                            ),
                            Gap(8),
                            BlocBuilder<CreateClubCubit, CreateClubState>(
                              builder: (context, state) {
                                return DropdownSignupWidget(
                                  items: cubit.universities,
                                  hint: "اختر الجامعة",
                                  onChanged: (university) {
                                    universityNameController.text =
                                        university ?? '';
                                    cubit.getAssignSupervisor(
                                      universityId: university!,
                                    );
                                  },
                                  validator: Validators.validateUniversity,
                                );
                              },
                            ),
                            BlocBuilder<CreateClubCubit, CreateClubState>(
                              builder: (context, state) {
                                if (state
                                    is CreateClubSpecificUniversityState) {
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Gap(10),
                                      AssignSupervisorFeatureWidget(
                                        key: ValueKey(state.universityId),
                                        universityId: state.universityId,
                                        assignSupervisor: (userId) {
                                          supervisorController.text =
                                              userId ?? '';
                                        },
                                      ),
                                    ],
                                  );
                                }
                                return SizedBox.shrink();
                              },
                            ),
                            Gap(20),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Gap(20),
                  ButtonWidget(
                    title: "حفظ النادي",
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        cubit.getCreateClubMethod(
                          name: clubNameController.text,
                          description: descriptionNameController.text,
                          universityId: universityNameController.text,
                          assignSupervisor: supervisorController.text,
                        );
                      } else {
                        autovalidateMode.value =
                            AutovalidateMode.onUserInteraction;
                      }
                    },
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
