
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/admin_features/admin_panel/domain/entities/admin_panel_entity.dart';

import 'package:enjaz/admin_features/admin_panel/data/datasources/admin_panel_remote_data_source.dart';
import 'package:enjaz/admin_features/admin_panel/data/models/admin_panel_model.dart';
import 'package:enjaz/admin_features/admin_panel/domain/repositories/admin_panel_repository_domain.dart';

@LazySingleton(as: AdminPanelRepositoryDomain)
class AdminPanelRepositoryData implements AdminPanelRepositoryDomain{
  final BaseAdminPanelRemoteDataSource remoteDataSource;


  AdminPanelRepositoryData(this.remoteDataSource);

@override
  Future<Result<AdminPanelEntity, Failure>> getAdminPanel() async {
    try {
      final response = await remoteDataSource.getAdminPanel();
      return Success(response.toEntity());
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
