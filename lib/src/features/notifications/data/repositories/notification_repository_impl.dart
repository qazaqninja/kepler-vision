import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kepler_vision/src/features/notifications/domain/entities/get_notifications_entity.dart';
import 'package:kepler_vision/src/features/notifications/domain/requests/get_notifications_request.dart';

import '../../../../core/exceptions/domain_exception.dart';
import '../../domain/repositories/i_notification_repository.dart';
import '../datasources/remote/i_notification_remote.dart';
import '../datasources/remote/notification_remote_impl.dart';

@named
@LazySingleton(as: INotificationRepository)
class NotificationRepositoryImpl implements INotificationRepository {
  final INotificationRemote _analImpl;
  NotificationRepositoryImpl(@Named.from(NotificationRemoteImpl) this._analImpl);

  @override
  Future<Either<DomainException, GetNotificationsEntity>> getNotifications(GetNotificationsRequest request) async {
    try {
      final requests = await _analImpl.getNotification(request);
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
}
