import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/loading/domain/entities/loading_entity.dart';

abstract class LoadingRepositoryDomain {
    Future<Result<LoadingEntity, Failure>> getLoading();
}
