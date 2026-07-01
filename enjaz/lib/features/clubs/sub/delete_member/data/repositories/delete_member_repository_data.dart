import 'package:enjaz/core/errors/network_exceptions.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/clubs/sub/delete_member/domain/repositories/delete_member_repository_domain.dart';
import 'package:enjaz/features/clubs/sub/delete_member/data/datasources/delete_member_remote_data_source.dart';

@LazySingleton(as: DeleteMemberRepositoryDomain)
class DeleteMemberRepositoryData implements DeleteMemberRepositoryDomain {
  final BaseDeleteMemberRemoteDataSource remoteDataSource;

  DeleteMemberRepositoryData(this.remoteDataSource);

  @override
  Future<Result<void, Failure>> deleteMember({
    required String clubId,
    required String userId,
  }) async {
    try {
      await remoteDataSource.deleteMember(
        clubId: clubId,
        userId: userId,
      );

      return const Success(null);
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}