import 'package:enjaz/core/common/models/club_model/club_model.dart';
import 'package:enjaz/core/common/models/event_details_model/event_details_model.dart';
import 'package:enjaz/core/constants/app_enums.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/sub/search/data/datasources/search_remote_data_source.dart';
import 'package:enjaz/features/sub/search/domain/repositories/search_repository_domain.dart';

@LazySingleton(as: SearchRepositoryDomain)
class SearchRepositoryData implements SearchRepositoryDomain {
  final BaseSearchRemoteDataSource remoteDataSource;

  SearchRepositoryData(this.remoteDataSource);

  @override
  Future<Result<List<T>, Failure>> searchQueryMethod<T>({
    required SearchCategoryEnum category,
    required String searchText,
  }) async {
    try {
      final response = await remoteDataSource.searchQueryMethod(
        category: category,
        searchText: searchText,
      );

      // Convert raw JSON list to List of Entities based on the category
      final List<T> entities = response.map((json) {
        switch (category) {
          case .events:
            return EventDetailsModel.fromJson(json).toEntity() as T;
          case .clubs:
            return ClubModel.fromJson(json).toEntity() as T;
        }
      }).toList();

      return Success(entities);
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
