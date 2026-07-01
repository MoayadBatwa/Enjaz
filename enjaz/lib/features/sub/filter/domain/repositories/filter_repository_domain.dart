import 'package:enjaz/core/common/entities/university_entity/university_entity.dart';
import 'package:enjaz/core/constants/app_enums.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/failure.dart';

abstract class FilterRepositoryDomain {
    Future<Result<List<T>, Failure>> getFilter<T>({required FilterCategoryEnum category});
    Future<Result<List<UniversityEntity>, Failure>> getUniversities<T>();
}
