import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/sub/signout/domain/repositories/signout_repository_domain.dart';

@lazySingleton
class SignoutUseCase {
  final SignoutRepositoryDomain _repositoryData;

  SignoutUseCase(this._repositoryData);

  Future<Result<bool, Failure>> getSignout() async {
    return _repositoryData.getSignout();
  }
}
