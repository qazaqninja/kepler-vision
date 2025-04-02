import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kepler_vision/src/features/analytics/domain/entities/get_analytics_entity.dart';
import 'package:kepler_vision/src/features/analytics/domain/entities/get_hot_spots_entity.dart';
import 'package:kepler_vision/src/features/analytics/domain/entities/get_problem_classes_entity.dart';
import 'package:kepler_vision/src/features/analytics/domain/requests/get_events_count_request.dart';
import 'package:kepler_vision/src/features/analytics/domain/requests/get_hot_spots_request.dart';
import 'package:kepler_vision/src/features/analytics/domain/requests/get_problem_classes_request.dart';

import '../../../../core/exceptions/domain_exception.dart';
import '../../domain/repositories/i_analytics_repository.dart';
import '../datasources/remote/analytics_remote_impl.dart';
import '../datasources/remote/i_analytics_remote.dart';

@named
@LazySingleton(as: IAnalyticsRepository)
class AnalyticsRepositoryImpl implements IAnalyticsRepository {
  final IAnalyticsRemote _analImpl;
  AnalyticsRepositoryImpl(@Named.from(AnalyticsRemoteImpl) this._analImpl);

  @override
  Future<Either<DomainException, GetAnalyticsEntity>> getEventsCount(GetEventsCountRequest request) async {
    try {
      final requests = await _analImpl.getEventsCount(request);
      return requests.fold(
        (error) => Left(error),
        (result) {
          return Right(result);
        },
      );
    } catch (e) {
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, GetHotSpotsEntity>> getHotSpots(GetHotSpotsRequest request) async {
    try {
      final requests = await _analImpl.getHotSpots(request);
      return requests.fold((error) => Left(error), (result) {
        return Right(result);
      });
    } catch (r) {
      return Left(UnknownException(message: r.toString()));
    }
  }

  @override
  Future<Either<DomainException, GetProblemClassesEntity>> getProblemClasses(GetProblemClassesRequest request) async {
    try {
      final requests = await _analImpl.getProblemClasses(request);
      return requests.fold((error) => Left(error), (result) {
        return Right(result);
      });
    } catch (e) {
      return Left(UnknownException(message: e.toString()));
    }
  }
}
