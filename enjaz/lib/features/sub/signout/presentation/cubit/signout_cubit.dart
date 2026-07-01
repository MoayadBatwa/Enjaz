import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:enjaz/features/sub/signout/domain/use_cases/signout_use_case.dart';
import 'package:enjaz/features/sub/signout/presentation/cubit/signout_state.dart';

class SignoutCubit extends Cubit<SignoutState> {
  final SignoutUseCase _signoutUseCase;

  SignoutCubit(this._signoutUseCase) : super(SignoutInitialState());

  Future<void> getSignoutMethod() async {
    final result = await _signoutUseCase.getSignout();
    result.when(
      (success) {
        emit(SignoutSuccessState());
      },
      (whenError) {
        emit(SignoutErrorState(message: whenError.message));
      },
    );
  }
  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
