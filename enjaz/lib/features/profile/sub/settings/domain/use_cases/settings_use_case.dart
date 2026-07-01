import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/profile/sub/settings/domain/entities/settings_entity.dart';
import 'package:enjaz/features/profile/sub/settings/domain/repositories/settings_repository_domain.dart';


@lazySingleton
class SettingsUseCase {
  final SettingsRepositoryDomain _repositoryData;

  SettingsUseCase(this._repositoryData);

   Future<Result<SettingsEntity, Failure>> getSettings() async {
    return _repositoryData.getSettings();
  }
}
