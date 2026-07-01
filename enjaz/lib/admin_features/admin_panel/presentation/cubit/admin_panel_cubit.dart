import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:enjaz/admin_features/admin_panel/domain/use_cases/admin_panel_use_case.dart';
import 'package:enjaz/admin_features/admin_panel/presentation/cubit/admin_panel_state.dart';

class AdminPanelCubit extends Cubit<AdminPanelState> {
  final AdminPanelUseCase _adminPanelUseCase;

  AdminPanelCubit(this._adminPanelUseCase) : super(AdminPanelInitialState());

  Future<void> getAdminPanelMethod() async {
    final result = await _adminPanelUseCase.getAdminPanel();
    result.when(
      (success) {
        //here is when success result
      },
      (whenError) {
       //here is when error result
      },
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
