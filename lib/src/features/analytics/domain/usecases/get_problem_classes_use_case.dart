import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kepler_vision/src/features/analytics/data/repositories/analytics_repository_impl.dart';
import 'package:kepler_vision/src/features/analytics/domain/entities/get_problem_classes_entity.dart';
import 'package:kepler_vision/src/features/analytics/domain/repositories/i_analytics_repository.dart';
import 'package:kepler_vision/src/features/analytics/domain/requests/get_problem_classes_request.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';

@lazySingleton
class GetProblemClassesUseCase extends UseCase<GetProblemClassesEntity, GetProblemClassesRequest> {
  final IAnalyticsRepository _repository;

  GetProblemClassesUseCase(@Named.from(AnalyticsRepositoryImpl) this._repository);

  @override
  Future<Either<DomainException, GetProblemClassesEntity>> execute(GetProblemClassesRequest requestModel) {
    return _repository.getProblemClasses(requestModel);
  }
}
