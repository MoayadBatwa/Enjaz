import 'package:enjaz/core/constants/app_enums.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/failure.dart';

abstract class SearchRepositoryDomain {
  Future<Result<List<T>, Failure>> searchQueryMethod<T>({
    required SearchCategoryEnum category,
    required String searchText,
  });
}
