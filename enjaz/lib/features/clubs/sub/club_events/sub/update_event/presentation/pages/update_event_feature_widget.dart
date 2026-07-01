import 'package:enjaz/core/extensions/context_extensions.dart';
import 'package:enjaz/core/extensions/date_time_extension.dart';
import 'package:enjaz/core/extensions/string_extensions.dart';
import 'package:enjaz/core/extensions/theme_extensions.dart';
import 'package:enjaz/features/auth/widgets/card_widget.dart';
import 'package:enjaz/features/clubs/sub/club_events/domain/entities/manage_event_entity.dart';
import 'package:enjaz/features/clubs/sub/club_events/presentation/widget/text_form_field_widget.dart';
import 'package:enjaz/features/clubs/sub/club_events/sub/update_event/presentation/cubit/update_event_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:get_it/get_it.dart';
import 'package:enjaz/features/clubs/sub/club_events/sub/update_event/presentation/cubit/update_event_cubit.dart';
import 'package:go_router/go_router.dart';
import 'package:time_picker_spinner_pop_up/time_picker_spinner_pop_up.dart';

class UpdateEventFeatureWidget extends HookWidget {
  const UpdateEventFeatureWidget({super.key, required this.event});
  final ManageEventEntity event;
  @override
  Widget build(BuildContext context) {
    final formKey = useMemoized(() => GlobalKey<FormState>());

    final titleController = useTextEditingController(text: event.title);
    final descriptionController = useTextEditingController(
      text: event.description,
    );
    final placeController = useTextEditingController(text: event.place);
    final mapLinkController = useTextEditingController(text: event.mapUrl);
    final capacityController = useTextEditingController(
      text: event.capacity.toString(),
    );

    final selectedDate = useState<DateTime?>(event.dateAt);
    final isOpen = useState<bool>(event.isOpen ?? false);

    // Parse time strings into DateTime Time Picker package
    final startTime = useState<DateTime>(event.startTime.toDateTimeParse);
    final endTime = useState<DateTime>(event.endTime.toDateTimeParse);

    return BlocProvider(
      create: (context) => UpdateEventCubit(GetIt.I.get()),
      child: Builder(
        builder: (context) {
          final cubit = context.read<UpdateEventCubit>();
          return Scaffold(
            appBar: AppBar(
              title: Text("تعديل بيانات الفعالية"),
              centerTitle: true,
            ),
            body: BlocListener<UpdateEventCubit, UpdateEventState>(
              listener: (context, state) {
                                context.hideLoading();

                switch (state) {
                  case UpdateEventErrorState _:
                    context.showSnackBar(state.message, isError: true);
                    break;
                    case UpdateEventLoadingState _:
                    context.showLoading();
                    break;
                  case UpdateEventSuccessState _:
                    context.showSnackBar("تم العملية بنجاح");
                    break;
                  default:
                }
              },
              child: SafeArea(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Form(
                    key: formKey,
                    child: SingleChildScrollView(
                      child: CardWidget(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "تعديل الفعالية",
                              style: context.theme.textTheme.headlineMedium,
                            ),

                            Gap(16),

                            // --- REGISTRATION STATUS SWITCH ---
                            SwitchListTile(
                              title: Text(
                                "حالة التسجيل للفعالية",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                isOpen.value
                                    ? "التسجيل مفتوح حالياً للعموم"
                                    : "التسجيل مغلق حالياً",
                              ),
                              value: isOpen.value,
                              onChanged: (value) => isOpen.value = value,

                              contentPadding: .symmetric(
                                horizontal: 16,
                                vertical: 8,
                              ),
                              tileColor: isOpen.value
                                  ? Color.fromARGB(51, 76, 175, 79)
                                  : Colors.transparent,
                              activeThumbColor: Colors.green,

                              secondary: Icon(
                                isOpen.value
                                    ? Icons.lock_open_rounded
                                    : Icons.lock_rounded,
                                color: isOpen.value
                                    ? Colors.green
                                    : context.theme.disabledColor,
                              ),
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
                                    initialDate:
                                        selectedDate.value ?? DateTime.now(),
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
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                  alignment: Alignment.center,
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

                                  final updatedEvent = ManageEventEntity(
                                    id: event.id,
                                    planId: event.planId,
                                    title: titleController.text.trim(),
                                    description: descriptionController.text
                                        .trim(),
                                    dateAt: selectedDate.value!,
                                    place: placeController.text.trim(),
                                    capacity: capacityController.text.toInt!,
                                    mapUrl:
                                        mapLinkController.text.trim().isEmpty
                                        ? null
                                        : mapLinkController.text.trim(),
                                    startTime: startTime.value.toString(),
                                    endTime: endTime.value.toString(),
                                    isOpen: isOpen.value,
                                    status: event.status,
                                  );

                                  await cubit.getUpdateEventMethod(
                                    updatedEvent: updatedEvent,
                                  );

                                  if (context.mounted) {
                                    context.pop(true);
                                  }
                                },
                                child: Text(
                                  "حفظ التغييرات",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),

                            Gap(16),

                            // --- DELETE ACTION BUTTON ---
                            SizedBox(
                              width: MediaQuery.widthOf(context),
                              height: 50,
                              child: OutlinedButton.icon(
                                style: OutlinedButton.styleFrom(
                                  foregroundColor: Colors.red,
                                  side: BorderSide(color: Colors.red),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                icon: Icon(Icons.delete_forever_rounded),
                                label: Text(
                                  "حذف الفعالية نهائياً",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                onPressed: () async {
                                  Future<bool> showConfirmDeleteDialog(
                                    BuildContext context,
                                  ) async {
                                    return await showDialog<bool>(
                                          context: context,
                                          builder: (context) => AlertDialog(
                                            title: Text("تأكيد الحذف"),
                                            content: Text(
                                              "هل أنت متأكد من رغبتك في حذف هذه الفعالية نهائياً؟ لا يمكن التراجع عن هذا الإجراء.",
                                            ),
                                            actions: [
                                              ElevatedButton(
                                                onPressed: () => Navigator.of(
                                                  context,
                                                ).pop(false),
                                                child: Text("إلغاء"),
                                              ),
                                              ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  side: BorderSide(
                                                    width: 1,
                                                    color: Colors.red,
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: .circular(10),
                                                  ),
                                                  backgroundColor: Colors.white,
                                                  surfaceTintColor: Colors.red,
                                                ),
                                                onPressed: () => Navigator.of(
                                                  context,
                                                ).pop(true),
                                                child: Text(
                                                  "حذف",
                                                  style: TextStyle(
                                                    color: Colors.red,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ) ??
                                        false;
                                  }

                                  final confirmDelete =
                                      await showConfirmDeleteDialog(context);
                                  if (!confirmDelete) return;

                                  await cubit.getDeleteEventMethod(
                                    eventId: event.id!,
                                  );

                                  if (context.mounted) {
                                    context.pop(true);
                                  }
                                },
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
