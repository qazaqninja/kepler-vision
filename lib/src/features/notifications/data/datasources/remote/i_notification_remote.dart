import 'package:fpdart/fpdart.dart';
import 'package:kepler_vision/src/features/notifications/domain/entities/get_notifications_entity.dart';
import 'package:kepler_vision/src/features/notifications/domain/requests/get_notifications_request.dart';

import '../../../../../core/exceptions/domain_exception.dart';

abstract class INotificationRemote {
  Future<Either<DomainException, GetNotificationsEntity>> getNotification(
    GetNotificationsRequest request,
  );
}
