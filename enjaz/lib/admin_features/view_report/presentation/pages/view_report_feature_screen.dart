import 'package:enjaz/admin_features/view_report/presentation/cubit/view_report_state.dart';
import 'package:enjaz/admin_features/view_report/presentation/widgets/view_pdf_widget.dart';
import 'package:enjaz/core/extensions/context_extensions.dart';
import 'package:enjaz/core/utils/navigators.dart';
import 'package:enjaz/core/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:enjaz/admin_features/view_report/presentation/cubit/view_report_cubit.dart';
import 'package:gap/gap.dart';

class ViewReportFeatureScreen extends StatelessWidget {
  const ViewReportFeatureScreen({super.key, this.clubId});
  final String? clubId;
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ViewReportCubit>()..getReportsMethod(clubId);

    return Scaffold(
      appBar: AppBar(title: const Text('عرض التقارير')),
      body: BlocListener<ViewReportCubit, ViewReportState>(
        listener: (context, state) {
          context.hideLoading();
          if (state is ViewReportSuccessState) {
            Navigators.goTo(context, ViewPdfWidget(path: state.report.path));
          }
          if (state is ViewReportLoadingState) {
            context.showLoading();
          }
          if (state is ViewReportErrorState) {
            context.showSnackBar(state.message, isError: true);
          }
          if (state is ViewReportDownloadPdfSuccessState) {
            context.showSnackBar(
              'File downloaded successfully',
              isError: false,
            );
          }
        },
        child: BlocBuilder<ViewReportCubit, ViewReportState>(
          buildWhen: (previous, current) {
            if (current is ViewReportSuccessState ||
                current is ViewReportLoadingState ||
                current is ViewReportDownloadPdfSuccessState ||
                current is ViewReportErrorState) {
              return false;
            }
            return true;
          },
          builder: (context, state) {
            if (state is GetReportSuccessState) {
              if (state.report.isNotEmpty) {
                return ListView.separated(
                  itemBuilder: (context, index) {
                    final report = state.report[index];
                    return ListTile(
                      onTap: () async {
                        cubit.getViewReportMethod(
                          reportId: report.id,
                          file: report.file,
                        );
                      },
                      title: Text(report.eventName),
                      subtitle: Text(report.createdAt.toString()),
                      trailing: InkWell(
                        onTap: () {
                          cubit.getDownloadPdfMethod(url: report.file);
                        },
                        child: Icon(Icons.file_download),
                      ),
                      leading: Icon(Icons.file_open_rounded),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Gap(8);
                  },
                  itemCount: state.report.length,
                );
              }
              return Center(child: Text("لا يوجد تقارير"));
            }
            return LoadingWidget();
          },
        ),
      ),
    );
  }
}
