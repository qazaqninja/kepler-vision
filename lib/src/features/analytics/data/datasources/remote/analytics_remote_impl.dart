import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kepler_vision/src/core/api/client/endpoints.dart';
import 'package:kepler_vision/src/core/api/client/rest/dio/dio_client.dart';
import 'package:kepler_vision/src/core/exceptions/domain_exception.dart';
import 'package:kepler_vision/src/core/services/storage/storage_service_impl.dart';
import 'package:kepler_vision/src/features/analytics/data/datasources/remote/i_analytics_remote.dart';
import 'package:kepler_vision/src/features/analytics/domain/entities/get_analytics_entity.dart';
import 'package:kepler_vision/src/features/analytics/domain/entities/get_hot_spots_entity.dart';
import 'package:kepler_vision/src/features/analytics/domain/entities/get_problem_classes_entity.dart';
import 'package:kepler_vision/src/features/analytics/domain/requests/get_events_count_request.dart';
import 'package:kepler_vision/src/features/analytics/domain/requests/get_hot_spots_request.dart';
import 'package:kepler_vision/src/features/analytics/domain/requests/get_problem_classes_request.dart';

@named
@LazySingleton(as: IAnalyticsRemote)
class AnalyticsRemoteImpl implements IAnalyticsRemote {
  AnalyticsRemoteImpl(this.client);

  final DioRestClient client;
  final _headers = {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer ${StorageServiceImpl().getToken()}',
  };

  @override
  Future<Either<DomainException, GetAnalyticsEntity>> getEventsCount(GetEventsCountRequest request) async {
    final queryParams = <String, dynamic>{};

    if (request.startDate != null) {
      queryParams['start_date'] = request.startDate;
    }
    if (request.endDate != null) {
      queryParams['end_date'] = request.endDate;
    }

    final response = await client.get(
      '${EndPoints.baseUrl}${EndPoints.school}/${request.schoolId}/analytics/event-type/events-count',
      queryParameters: queryParams,
      options: Options(headers: _headers),
    );

    return response.fold(
      (error) => Left(error),
      (result) {
        if (result.statusCode == 200) {
          try {
            return Right(GetAnalyticsEntity.fromJson(result.data));
          } catch (e) {
            return Left(UnknownException(message: 'Failed response: $e'));
          }
        } else {
          return Left(UnknownException(message: result.statusMessage ?? 'Unknown error'));
        }
      },
    );
  }

  @override
  Future<Either<DomainException, GetHotSpotsEntity>> getHotSpots(GetHotSpotsRequest request) async {
    final response = await client.get(
      '${EndPoints.baseUrl}${EndPoints.school}/${request.schoolId}/hot-spots',
      options: Options(headers: _headers),
    );
    return response.fold(
      (error) => Left(error),
      (result) {
        if (result.statusCode == 200) {
          try {
            return Right(GetHotSpotsEntity.fromJson(result.data));
          } catch (e, stackTrace) {
            assert(() {
              //ignore: avoid_print
              print('Hot spots parsing error: $e');
              //ignore: avoid_print
              print('Stack trace: $stackTrace');
              return true;
            }());
            return Left(UnknownException(message: 'Failed to parse hot spots: $e'));
          }
        } else {
          return Left(UnknownException(message: result.statusMessage ?? 'Unknown error'));
        }
      },
    );
  }

  @override
  Future<Either<DomainException, GetProblemClassesEntity>> getProblemClasses(GetProblemClassesRequest request) async {
    final response = await client.get(
      '${EndPoints.baseUrl}${EndPoints.school}/${request.schoolId}/problem-classes',
      options: Options(headers: _headers),
    );
    return response.fold(
      (error) => Left(error),
      (result) {
        if (result.statusCode == 200) {
          try {
            return Right(GetProblemClassesEntity.fromJson(result.data));
          } catch (e, stackTrace) {
            //ignore: avoid_print
            print('Problem classes parsing error: $e');
            //ignore: avoid_print
            print('Stack trace: $stackTrace');
            return Left(UnknownException(message: 'Failed to parse problem classes: $e'));
          }
        } else {
          return Left(UnknownException(message: result.statusMessage ?? 'Unknown error'));
        }
      },
    );
  }
}
