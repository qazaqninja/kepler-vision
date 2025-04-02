import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kepler_vision/src/features/analytics/data/repositories/analytics_repository_impl.dart';
import 'package:kepler_vision/src/features/analytics/domain/entities/get_analytics_entity.dart';
import 'package:kepler_vision/src/features/analytics/domain/repositories/i_analytics_repository.dart';
import 'package:kepler_vision/src/features/analytics/domain/requests/get_events_count_request.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';

@lazySingleton
class GetAnalyticsUseCase extends UseCase<GetAnalyticsEntity, GetEventsCountRequest> {
  final IAnalyticsRepository _repository;

  GetAnalyticsUseCase(@Named.from(AnalyticsRepositoryImpl) this._repository);

  @override
  Future<Either<DomainException, GetAnalyticsEntity>> execute(GetEventsCountRequest requestModel) {
    return _repository.getEventsCount(requestModel);
  }
}
