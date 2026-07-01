import 'package:enjaz/admin_features/universities/sub/add_university/presentation/widgets/gender_dropdown_widget.dart';
import 'package:enjaz/core/extensions/context_extensions.dart';
import 'package:enjaz/core/extensions/theme_extensions.dart';
import 'package:enjaz/core/utils/validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

import 'package:enjaz/features/auth/widgets/Button_widget.dart';
import 'package:enjaz/features/auth/widgets/field_widget.dart';

import 'package:enjaz/admin_features/universities/sub/add_university/presentation/cubit/add_university_cubit.dart';
import 'package:enjaz/admin_features/universities/sub/add_university/presentation/cubit/add_university_state.dart';

class AddUniversityFeatureWidget extends HookWidget {
  const AddUniversityFeatureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AddUniversityCubit>();

    final name = useTextEditingController();
    final description = useTextEditingController();
    final location = useTextEditingController();
    final branch = useTextEditingController();
    final code = useTextEditingController();

    final gender = useState<String?>(null);

    final formKey = useMemoized(() => GlobalKey<FormState>());
    final autovalidateMode = useState<AutovalidateMode>(
      AutovalidateMode.disabled,
    );

    return Scaffold(
      appBar: AppBar(title: Text("إضافة جامعة")),

      body: SafeArea(
        child: SingleChildScrollView(
          child: BlocListener<AddUniversityCubit, AddUniversityState>(
            listener: (context, state) {
              switch (state) {
                case AddUniversityLoadingState _:
                  context.showLoading();
                  break;

                case AddUniversitySuccessState _:
                  context.hideLoading();
                  context.showSnackBar(
                    'تم إضافة الجامعة بنجاح',
                    isError: false,
                  );

                  Navigator.pop(context, true);
                  break;

                case AddUniversityErrorState _:
                  context.showSnackBar(state.message, isError: true);

                  break;

                default:
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
                            Text(
                              "اسم الجامعة",
                              style: context.theme.textTheme.bodyLarge,
                            ),
                            Gap(8),
                            FieldWidget(
                              controller: name,
                              validator: Validators.validateRequired,
                            ),

                            Gap(10),

                            Text(
                              "الوصف",
                              style: context.theme.textTheme.bodyLarge,
                            ),
                            Gap(8),
                            FieldWidget(
                              controller: description,
                              validator: Validators.validateRequired,
                            ),

                            Gap(10),

                            Text(
                              "الاسم المختصر",
                              style: context.theme.textTheme.bodyLarge,
                            ),
                            Gap(8),
                            FieldWidget(
                              controller: code,
                              validator: Validators.validateRequired,
                            ),

                            Gap(10),

                            Text(
                              "الموقع",
                              style: context.theme.textTheme.bodyLarge,
                            ),
                            Gap(8),
                            FieldWidget(
                              controller: location,
                              validator: Validators.validateRequired,
                            ),

                            Gap(10),

                            Text(
                              "الفرع",
                              style: context.theme.textTheme.bodyLarge,
                            ),
                            Gap(8),
                            FieldWidget(
                              controller: branch,
                              validator: Validators.validateRequired,
                            ),

                            Gap(10),

                            Text(
                              "الجنس",
                              style: context.theme.textTheme.bodyLarge,
                            ),
                            Gap(5),
                            GenderDropdownWidget(
                              value: gender.value,
                              validator: Validators.validateGender,
                              onChanged: (value) {
                                gender.value = value;
                              },
                            ),
                            Gap(8),

                            Gap(20),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Gap(20),

                  ButtonWidget(
                    title: "حفظ الجامعة",
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        cubit.addUniversity(
                          name: name.text,
                          description: description.text,
                          location: location.text,
                          branch: branch.text,
                          gender: gender.value!,
                          code: code.text,
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
