import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/admin_features/admin_panel/domain/entities/admin_panel_entity.dart';

abstract class AdminPanelRepositoryDomain {
    Future<Result<AdminPanelEntity, Failure>> getAdminPanel();
}
