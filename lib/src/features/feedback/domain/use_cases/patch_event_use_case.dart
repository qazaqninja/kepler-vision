import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kepler_vision/src/features/events/data/repositories/events_repository_impl.dart';
import 'package:kepler_vision/src/features/events/domain/repositories/i_events_repository.dart';
import 'package:kepler_vision/src/features/events/domain/requests/patch_event_request.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';

@lazySingleton
class PatchEventUseCase extends UseCase<void, PatchEventRequest> {
  final IEventsRepository _repository;

  PatchEventUseCase(@Named.from(EventsRepositoryImpl) this._repository);

  @override
  Future<Either<DomainException, void>> execute(
      PatchEventRequest requestModel) {
    return _repository.patchEvent(requestModel);
  }
}
