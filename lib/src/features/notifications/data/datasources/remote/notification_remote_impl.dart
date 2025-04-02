import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kepler_vision/src/core/api/client/endpoints.dart';
import 'package:kepler_vision/src/core/api/client/rest/dio/dio_client.dart';
import 'package:kepler_vision/src/core/exceptions/domain_exception.dart';
import 'package:kepler_vision/src/core/services/storage/storage_service_impl.dart';
import 'package:kepler_vision/src/features/notifications/data/datasources/remote/i_notification_remote.dart';
import 'package:kepler_vision/src/features/notifications/domain/entities/get_notifications_entity.dart';
import 'package:kepler_vision/src/features/notifications/domain/requests/get_notifications_request.dart';

@named
@LazySingleton(as: INotificationRemote)
class NotificationRemoteImpl implements INotificationRemote {
  NotificationRemoteImpl(this.client);

  final DioRestClient client;
  final _headers = {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer ${StorageServiceImpl().getToken()}',
  };

  @override
  Future<Either<DomainException, GetNotificationsEntity>> getNotification(GetNotificationsRequest request) async {
    final queryParams = <String, dynamic>{};
    queryParams['role'] = request.role;
    if (request.cursor != null) {
      queryParams['cursor'] = request.cursor;
    }
    if (request.limit != null) {
      queryParams['limit'] = request.limit;
    }

    final response = await client.get(
      '${EndPoints.baseUrl}/notifications',
      queryParameters: queryParams,
      options: Options(headers: _headers),
    );

    return response.fold(
      (error) => Left(error),
      (result) {
        if (result.statusCode == 200) {
          try {
            return Right(GetNotificationsEntity.fromJson(result.data));
          } catch (e) {
            return Left(UnknownException(message: 'Failed response: $e'));
          }
        } else {
          return Left(UnknownException(message: result.statusMessage ?? 'Unknown error'));
        }
      },
    );
  }
}
