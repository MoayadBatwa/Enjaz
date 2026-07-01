import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:enjaz/admin_features/admin_panel/sub/analytical_dashboard/domain/use_cases/analytical_dashboard_use_case.dart';
import 'package:enjaz/admin_features/admin_panel/sub/analytical_dashboard/presentation/cubit/analytical_dashboard_state.dart';

class AnalyticalDashboardCubit extends Cubit<AnalyticalDashboardState> {
  final AnalyticalDashboardUseCase _analyticalDashboardUseCase;

  AnalyticalDashboardCubit(this._analyticalDashboardUseCase) : super(AnalyticalDashboardInitialState()){
    getAnalyticalDashboardMethod();
  }

  Future<void> getAnalyticalDashboardMethod() async {
    emit(AnalyticalDashboardLoadingState());
    final result = await _analyticalDashboardUseCase.getAnalyticalDashboard();
    result.when(
      (success) {
        emit(AnalyticalDashboardSuccessState(universities: success));
      },
      (whenError) {
       emit(AnalyticalDashboardErrorState(message: whenError.message));
      },
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
