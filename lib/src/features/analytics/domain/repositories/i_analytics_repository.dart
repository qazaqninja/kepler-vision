import 'package:fpdart/fpdart.dart';
import 'package:kepler_vision/src/features/analytics/domain/entities/get_analytics_entity.dart';
import 'package:kepler_vision/src/features/analytics/domain/entities/get_hot_spots_entity.dart';
import 'package:kepler_vision/src/features/analytics/domain/entities/get_problem_classes_entity.dart';
import 'package:kepler_vision/src/features/analytics/domain/requests/get_events_count_request.dart';
import 'package:kepler_vision/src/features/analytics/domain/requests/get_hot_spots_request.dart';
import 'package:kepler_vision/src/features/analytics/domain/requests/get_problem_classes_request.dart';

import '../../../../core/exceptions/domain_exception.dart';

abstract class IAnalyticsRepository {
  Future<Either<DomainException, GetAnalyticsEntity>> getEventsCount(
    GetEventsCountRequest request,
  );
  Future<Either<DomainException, GetHotSpotsEntity>> getHotSpots(
    GetHotSpotsRequest request,
  );
  Future<Either<DomainException, GetProblemClassesEntity>> getProblemClasses(
    GetProblemClassesRequest requset,
  );
}
