import 'package:enjaz/admin_features/admin_panel/presentation/widgets/admin_panel_widget.dart';
import 'package:enjaz/admin_features/admin_panel/sub/analytical_dashboard/presentation/cubit/analytical_dashboard_cubit.dart';
import 'package:enjaz/admin_features/admin_panel/sub/analytical_dashboard/presentation/pages/analytical_dashboard_feature_widget.dart';
import 'package:enjaz/core/navigation/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:enjaz/admin_features/admin_panel/presentation/cubit/admin_panel_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:gap/gap.dart';

class AdminPanelFeatureScreen extends StatelessWidget {
  const AdminPanelFeatureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _ = context.read<AdminPanelCubit>();

    return BlocProvider(
      create: (_) => AnalyticalDashboardCubit(GetIt.I.get()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("إدارة المنصة"),
          actions: [
            Builder(
              builder: (context) {
                return IconButton(
                  onPressed: () =>
                      context.read<AnalyticalDashboardCubit>().getAnalyticalDashboardMethod(),
                  icon: const Icon(Icons.refresh),
                  tooltip: 'تحديث التحليلات',
                );
              },
            ),
          ],
        ),

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const AnalyticalDashboardFeatureWidget(),
                const Gap(15),

                const Divider(),

                AdminPanelWidget(
                  title: "الجامعات",
                  subtitle: "استعراض، إضافة، وحذف الجامعات",
                  route: Routes.universities,
                ),

                const Divider(),

                AdminPanelWidget(
                  title: "الأندية",
                  subtitle: "استعراض، إضافة، وحذف الاندية",
                  route: Routes.manageClub,
                ),

                const Divider(),

                AdminPanelWidget(
                  title: "التقارير",
                  subtitle: "استعراض وتحميل تقارير الفعاليات المنتهية للنوادي",
                  route: Routes.viewReport,
                ),

                const Divider(),

                AdminPanelWidget(
                  title: "تقويم الفعاليات",
                  subtitle: "استعراض فعاليات جميع الاندية",
                  route: Routes.eventSchedule,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
