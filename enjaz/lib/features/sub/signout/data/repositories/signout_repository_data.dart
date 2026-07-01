
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';
import 'package:enjaz/core/errors/failure.dart';

import 'package:enjaz/features/sub/signout/data/datasources/signout_remote_data_source.dart';
import 'package:enjaz/features/sub/signout/domain/repositories/signout_repository_domain.dart';

@LazySingleton(as: SignoutRepositoryDomain)
class SignoutRepositoryData implements SignoutRepositoryDomain{
  final BaseSignoutRemoteDataSource remoteDataSource;


  SignoutRepositoryData(this.remoteDataSource);

@override
  Future<Result<bool, Failure>> getSignout() async {
    try {
      final response = await remoteDataSource.getSignout();
      return Success(response);
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
