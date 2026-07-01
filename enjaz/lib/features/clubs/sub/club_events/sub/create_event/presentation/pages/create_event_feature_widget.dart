import 'package:enjaz/core/extensions/context_extensions.dart';
import 'package:enjaz/core/extensions/date_time_extension.dart';
import 'package:enjaz/core/extensions/string_extensions.dart';
import 'package:enjaz/core/extensions/theme_extensions.dart';
import 'package:enjaz/features/auth/widgets/card_widget.dart';
import 'package:enjaz/features/clubs/sub/club_events/domain/entities/manage_event_entity.dart';
import 'package:enjaz/features/clubs/sub/club_events/sub/create_event/presentation/cubit/create_event_state.dart';
import 'package:enjaz/features/clubs/sub/club_events/presentation/widget/text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:get_it/get_it.dart';
import 'package:enjaz/features/clubs/sub/club_events/sub/create_event/presentation/cubit/create_event_cubit.dart';
import 'package:go_router/go_router.dart';
import 'package:time_picker_spinner_pop_up/time_picker_spinner_pop_up.dart';

class CreateEventFeatureWidget extends HookWidget {
  const CreateEventFeatureWidget({super.key, required this.planId});
  final String planId;

  @override
  Widget build(BuildContext context) {
    final formKey = useMemoized(() => GlobalKey<FormState>());

    final titleController = useTextEditingController();
    final descriptionController = useTextEditingController();
    final placeController = useTextEditingController();
    final mapLinkController = useTextEditingController();
    final capacityController = useTextEditingController();

    final selectedDate = useState<DateTime?>(null);
    final startTime = useState<DateTime>(DateTime.now());
    final endTime = useState<DateTime>(DateTime.now().add(Duration(hours: 1)));

    return BlocProvider(
      create: (context) => CreateEventCubit(GetIt.I.get()),
      child: Builder(
        builder: (context) {
          final cubit = context.read<CreateEventCubit>();
          return Scaffold(
            appBar: AppBar(
              title: const Text("إضافة فعالية جديدة"),
              centerTitle: true,
            ),
            body: BlocListener<CreateEventCubit, CreateEventState>(
              listener: (context, state) {
                context.hideLoading();
                switch (state) {
                  case CreateEventErrorState _:
                    context.showSnackBar(state.message, isError: true);
                    break;
                    case CreateEventLoadingState _:
                    context.showLoading();
                    break;
                  case CreateEventSuccessState _:
                    context.showSnackBar("تم إنشاء الفعالية بنجاح");
                    break;
                  default:
                }
              },
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Form(
                    key: formKey,
                    child: SingleChildScrollView(
                      child: CardWidget(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "إضافة فعالية جديدة",
                              style: context.theme.textTheme.headlineMedium,
                            ),

                            Gap(16),

                            TextFormFieldWidget(
                              controller: titleController,
                              labelText: "عنوان الفعالية *",
                              icon: Icons.title,
                              validator: (value) =>
                                  value == null || value.trim().isEmpty
                                  ? "يرجى إدخال عنوان الفعالية"
                                  : null,
                            ),

                            Gap(16),

                            TextFormFieldWidget(
                              controller: descriptionController,
                              maxLines: 3,
                              labelText: "الوصف",
                              icon: Icons.description,
                            ),

                            Gap(16),

                            TextFormFieldWidget(
                              controller: placeController,
                              labelText: "اسم المكان * ",
                              hintText: "مثال: أكاديمية طويق",
                              icon: Icons.business_outlined,
                              validator: (value) =>
                                  value == null || value.trim().isEmpty
                                  ? "يرجى تحديد مكان الفعالية"
                                  : null,
                            ),

                            Gap(16),

                            TextFormFieldWidget(
                              controller: mapLinkController,
                              keyboardType: TextInputType.url,
                              labelText: "رابط الموقع",
                              hintText: "https://maps.google.com/...",
                              icon: Icons.location_on,
                              validator: (value) {
                                if (value == null || value.trim().isEmpty) {
                                  return null;
                                }
                                // Verify it's a valid link format
                                final urlPattern = RegExp(
                                  r'^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$',
                                );
                                if (!urlPattern.hasMatch(value.trim())) {
                                  return "يرجى إدخال رابط موقع صحيح (URL)";
                                }
                                return null;
                              },
                            ),

                            Gap(16),

                            TextFormFieldWidget(
                              controller: capacityController,
                              keyboardType: TextInputType.number,
                              labelText: "السعة (عدد الحضور) *",
                              icon: Icons.people,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "يرجى إدخال السعة";
                                }
                                if (int.tryParse(value) == null ||
                                    int.parse(value) <= 0) {
                                  return "يرجى إدخال عدد صحيح أكبر من صفر";
                                }
                                return null;
                              },
                            ),

                            Gap(16),

                            Text(
                              "التوقيت والتاريخ",
                              style: context.theme.textTheme.titleLarge,
                            ),

                            Gap(8),

                            Card(
                              child: ListTile(
                                title: Text(
                                  selectedDate.value == null
                                      ? "اختر تاريخ الفعالية *"
                                      : "التاريخ: ${selectedDate.value!.toDayMonthYear}",
                                ),
                                trailing: Icon(Icons.calendar_today),
                                onTap: () async {
                                  final DateTime? picked = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(2026),
                                    lastDate: DateTime(2030),
                                  );
                                  if (picked != null) {
                                    selectedDate.value = picked;
                                  }
                                },
                              ),
                            ),

                            Gap(16),

                            Row(
                              mainAxisAlignment: .spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Text("وقت البدء:"),

                                    Gap(4),
                                    TimePickerSpinnerPopUp(
                                      mode: .time,
                                      initTime: startTime.value,
                                      use24hFormat: false,
                                      onChange: (dateTime) =>
                                          startTime.value = dateTime,
                                    ),
                                  ],
                                ),

                                Column(
                                  children: [
                                    Text("وقت الانتهاء:"),

                                    Gap(4),
                                    TimePickerSpinnerPopUp(
                                      mode: .time,
                                      initTime: endTime.value,
                                      use24hFormat: false,
                                      minTime: startTime.value,
                                      onChange: (dateTime) =>
                                          endTime.value = dateTime,
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            Gap(32),

                            SizedBox(
                              width: MediaQuery.widthOf(context),
                              height: 50,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  alignment: .center,
                                ),
                                onPressed: () async {
                                  if (!formKey.currentState!.validate()) return;

                                  if (selectedDate.value == null) {
                                    context.showSnackBar(
                                      "يرجى اختيار تاريخ الفعالية",
                                      isError: true,
                                    );
                                    return;
                                  }

                                  final newEvent = ManageEventEntity(
                                    title: titleController.text,
                                    description: descriptionController.text,
                                    dateAt: selectedDate.value!,
                                    place: placeController.text,
                                    capacity: capacityController.text.toInt!,
                                    planId: planId,
                                    mapUrl: mapLinkController.text,
                                    startTime: startTime.value.toString(),
                                    endTime: endTime.value.toString(),
                                  );

                                  await cubit.getCreateEventMethod(
                                    newEvent: newEvent,
                                  );
                                  if (context.mounted) {
                                    context.pop(true);
                                  }
                                },
                                child: Text(
                                  "إنشاء الفعالية",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
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
            ),
          );
        },
      ),
    );
  }
}
