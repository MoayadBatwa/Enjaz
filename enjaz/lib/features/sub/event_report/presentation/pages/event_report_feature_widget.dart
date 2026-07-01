import 'package:enjaz/core/extensions/context_extensions.dart';
import 'package:enjaz/core/utils/validators.dart';
import 'package:enjaz/features/auth/widgets/card_widget.dart';
import 'package:enjaz/features/auth/widgets/field_widget.dart';
import 'package:enjaz/features/sub/event_report/presentation/cubit/event_report_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it/get_it.dart';
import 'package:enjaz/features/sub/event_report/presentation/cubit/event_report_cubit.dart';
import 'package:go_router/go_router.dart';

class EventReportFeatureWidget extends HookWidget {
  const EventReportFeatureWidget({super.key, required this.eventId});
  final String eventId;

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final attendanceController = useTextEditingController();
    final challengeController = useTextEditingController();
    final recommendController = useTextEditingController();
    return BlocProvider(
      create: (context) => EventReportCubit(GetIt.I.get()),
      child: Builder(
        builder: (context) {
          final cubit = context.read<EventReportCubit>();
          return Scaffold(
            appBar: AppBar(title: Text('التقرير'), centerTitle: true),
            body: BlocListener<EventReportCubit, EventReportState>(
              listener: (context, state) {
                if (state is EventReportSuccessState) {
                  context.showSnackBar('تم رفع التقرير بنجاح', isError: false);
                  context.pop();
                }
                if (state is EventReportErrorState) {
                  context.showSnackBar(state.message, isError: true);
                }
              },
              child: Center(
                child: CardWidget(
                  child: Form(
                    key: formKey,
                    child: Column(
                      mainAxisSize: .min,
                      children: [
                        FieldWidget(
                          controller: attendanceController,
                          icon: Icons.groups_3_rounded,
                          title: 'عدد الحضور الفعالية',
                          validator: Validators.validateRequired,
                        ),
                        FieldWidget(
                          controller: challengeController,
                          icon: Icons.check_box_outline_blank_outlined,
                          title: 'التحديات',
                          validator: Validators.validateRequired,
                        ),
                        FieldWidget(
                          controller: recommendController,
                          icon: Icons.recommend_rounded,
                          title: 'التوصيات',
                          validator: Validators.validateRequired,
                        ),

                        StatefulBuilder(
                          builder: (context, setState) {
                            return Column(
                              mainAxisSize: .min,
                              children: [
                                IconButton(
                                  onPressed: () async {
                                    await cubit.getFilePickerMethod();
                                    if (cubit.file != null) {
                                      setState(() {});
                                    }
                                  },
                                  icon: Icon(Icons.upload_file),
                                ),
                              ],
                            );
                          },
                        ),

                        ElevatedButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              cubit.postEventReportMethod(
                                eventId: eventId,
                                attendance: attendanceController.text,
                                challenge: challengeController.text,
                                recommend: recommendController.text,
                                file: cubit.file!,
                              );
                            }
                          },
                          child: Text('ارسال التقرير'),
                        ),
                      ],
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
