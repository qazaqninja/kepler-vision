import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kepler_vision/src/features/events/data/repositories/events_repository_impl.dart';
import 'package:kepler_vision/src/features/events/domain/repositories/i_events_repository.dart';
import 'package:kepler_vision/src/features/events/domain/requests/get_events_request.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';

@lazySingleton
class GetEventsCountUseCase extends UseCase<int, GetEventsRequest> {
  GetEventsCountUseCase(@Named.from(EventsRepositoryImpl) this._repository);

  final IEventsRepository _repository;

  @override
  Future<Either<DomainException, int>> execute(
    GetEventsRequest requestModel,
  ) async {
    return _repository
        .getEvents(requestModel)
        .then((e) => e.map((events) => events.length));
  }
}
