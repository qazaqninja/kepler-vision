import 'package:fpdart/fpdart.dart';
import 'package:kepler_vision/src/features/events/domain/requests/get_event_request.dart';
import 'package:kepler_vision/src/features/events/domain/requests/patch_event_request.dart';

import '../../../../core/components/events/domain/models/event_entity.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../requests/get_events_request.dart';

abstract class IEventsRepository {
  Future<Either<DomainException, List<EventEntity>>> getEvents(
    GetEventsRequest request,
  );

  Future<Either<DomainException, EventEntity>> getEvent(
    GetEventRequest request,
  );

  Future<Either<DomainException, void>> patchEvent(PatchEventRequest request);
}
