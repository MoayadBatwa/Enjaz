
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/profile/sub/settings/domain/entities/settings_entity.dart';

import 'package:enjaz/features/profile/sub/settings/data/datasources/settings_remote_data_source.dart';
import 'package:enjaz/features/profile/sub/settings/data/models/settings_model.dart';
import 'package:enjaz/features/profile/sub/settings/domain/repositories/settings_repository_domain.dart';

@LazySingleton(as: SettingsRepositoryDomain)
class SettingsRepositoryData implements SettingsRepositoryDomain{
  final BaseSettingsRemoteDataSource remoteDataSource;


  SettingsRepositoryData(this.remoteDataSource);

@override
  Future<Result<SettingsEntity, Failure>> getSettings() async {
    try {
      final response = await remoteDataSource.getSettings();
      return Success(response.toEntity());
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
