import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/failure.dart';


abstract class SignoutRepositoryDomain {
    Future<Result<bool, Failure>> getSignout();
}