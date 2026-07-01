import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/admin_features/admin_panel/domain/entities/admin_panel_entity.dart';
import 'package:enjaz/admin_features/admin_panel/domain/repositories/admin_panel_repository_domain.dart';


@lazySingleton
class AdminPanelUseCase {
  final AdminPanelRepositoryDomain _repositoryData;

  AdminPanelUseCase(this._repositoryData);

   Future<Result<AdminPanelEntity, Failure>> getAdminPanel() async {
    return _repositoryData.getAdminPanel();
  }
}
