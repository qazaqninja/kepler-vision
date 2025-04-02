import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/components/events/domain/models/event_entity.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../data/repositories/events_repository_impl.dart';
import '../repositories/i_events_repository.dart';
import '../requests/get_events_request.dart';

@lazySingleton
class GetEventsUseCase extends UseCase<List<EventEntity>, GetEventsRequest> {
  final IEventsRepository _repository;

  GetEventsUseCase(@Named.from(EventsRepositoryImpl) this._repository);

  @override
  Future<Either<DomainException, List<EventEntity>>> execute(
      GetEventsRequest requestModel) {
    return _repository.getEvents(requestModel);
  }
}
