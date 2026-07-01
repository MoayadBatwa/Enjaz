
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/loading/domain/entities/loading_entity.dart';

import 'package:enjaz/features/loading/data/datasources/loading_remote_data_source.dart';
import 'package:enjaz/features/loading/data/models/loading_model.dart';
import 'package:enjaz/features/loading/domain/repositories/loading_repository_domain.dart';

@LazySingleton(as: LoadingRepositoryDomain)
class LoadingRepositoryData implements LoadingRepositoryDomain{
  final BaseLoadingRemoteDataSource remoteDataSource;


  LoadingRepositoryData(this.remoteDataSource);

@override
  Future<Result<LoadingEntity, Failure>> getLoading() async {
    try {
      final response = await remoteDataSource.getLoading();
      return Success(response.toEntity());
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
