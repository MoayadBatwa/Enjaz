import 'package:enjaz/admin_features/admin_panel/sub/analytical_dashboard/presentation/cubit/analytical_dashboard_state.dart';
import 'package:enjaz/admin_features/admin_panel/sub/analytical_dashboard/presentation/widgets/dashboard_insights.dart';
import 'package:enjaz/core/extensions/context_extensions.dart';
import 'package:enjaz/core/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:enjaz/admin_features/admin_panel/sub/analytical_dashboard/presentation/cubit/analytical_dashboard_cubit.dart';

class AnalyticalDashboardFeatureWidget extends StatelessWidget {
  const AnalyticalDashboardFeatureWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocListener<AnalyticalDashboardCubit, AnalyticalDashboardState>(
      listener: (context, state) {
        switch (state) {
          case AnalyticalDashboardErrorState _:
            context.showSnackBar(state.message, isError: true);
            break;
          default:
        }
      },
      child: BlocBuilder<AnalyticalDashboardCubit, AnalyticalDashboardState>(
        builder: (context, state) {
          switch (state) {
            case AnalyticalDashboardLoadingState _:
              return const LoadingWidget();

            case AnalyticalDashboardSuccessState _:
              return DashboardInsights(data: state.universities);

            default:
          }
          return const Center(child: Text("لا تعمل التحليلا حاليا"));
        },
      ),
    );
  }
}
