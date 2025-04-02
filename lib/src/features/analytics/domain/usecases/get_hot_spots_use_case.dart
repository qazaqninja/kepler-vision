import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kepler_vision/src/features/analytics/data/repositories/analytics_repository_impl.dart';
import 'package:kepler_vision/src/features/analytics/domain/entities/get_hot_spots_entity.dart';
import 'package:kepler_vision/src/features/analytics/domain/repositories/i_analytics_repository.dart';
import 'package:kepler_vision/src/features/analytics/domain/requests/get_hot_spots_request.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';

@lazySingleton
class GetHotSpotsUseCase extends UseCase<GetHotSpotsEntity, GetHotSpotsRequest> {
  final IAnalyticsRepository _repository;

  GetHotSpotsUseCase(@Named.from(AnalyticsRepositoryImpl) this._repository);

  @override
  Future<Either<DomainException, GetHotSpotsEntity>> execute(GetHotSpotsRequest requestModel) {
    return _repository.getHotSpots(requestModel);
  }
}
