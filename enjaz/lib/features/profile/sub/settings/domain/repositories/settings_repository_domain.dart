import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/profile/sub/settings/domain/entities/settings_entity.dart';

abstract class SettingsRepositoryDomain {
    Future<Result<SettingsEntity, Failure>> getSettings();
}
