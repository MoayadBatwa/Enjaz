import 'package:enjaz/core/constants/app_enums.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/sub/search/domain/repositories/search_repository_domain.dart';

@lazySingleton
class SearchUseCase {
  final SearchRepositoryDomain _repositoryData;

  SearchUseCase(this._repositoryData);

  Future<Result<List<T>, Failure>> searchQueryMethod<T>({
    required SearchCategoryEnum category,
    required String searchText,
  }) async {
    return _repositoryData.searchQueryMethod(
      category: category,
      searchText: searchText,
    );
  }
}
