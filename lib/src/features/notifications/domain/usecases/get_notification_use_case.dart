import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kepler_vision/src/features/notifications/data/repositories/notification_repository_impl.dart';
import 'package:kepler_vision/src/features/notifications/domain/entities/get_notifications_entity.dart';
import 'package:kepler_vision/src/features/notifications/domain/repositories/i_notification_repository.dart';
import 'package:kepler_vision/src/features/notifications/domain/requests/get_notifications_request.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';

@lazySingleton
class GetNotificationUseCase extends UseCase<GetNotificationsEntity, GetNotificationsRequest> {
  final INotificationRepository _repository;

  GetNotificationUseCase(@Named.from(NotificationRepositoryImpl) this._repository);

  @override
  Future<Either<DomainException, GetNotificationsEntity>> execute(GetNotificationsRequest requestModel) {
    return _repository.getNotifications(requestModel);
  }
}
