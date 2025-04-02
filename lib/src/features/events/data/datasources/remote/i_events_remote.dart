import 'package:fpdart/fpdart.dart';
import 'package:kepler_vision/src/core/components/events/domain/models/event_entity.dart';
import 'package:kepler_vision/src/features/events/domain/requests/patch_event_request.dart';

import '../../../../../core/exceptions/domain_exception.dart';
import '../../../domain/requests/get_event_request.dart';
import '../../../domain/requests/get_events_request.dart';

abstract class IEventsRemote {
  Future<Either<DomainException, List<EventEntity>>> getEvents(
    GetEventsRequest request,
  );

  Future<Either<DomainException, EventEntity>> getEvent(
    GetEventRequest request,
  );

  Future<Either<DomainException, void>> patchEvent(PatchEventRequest request);
}
