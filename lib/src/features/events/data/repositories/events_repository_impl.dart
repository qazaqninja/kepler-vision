import 'dart:developer';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kepler_vision/src/features/events/domain/requests/patch_event_request.dart';

import '../../../../core/components/events/domain/models/event_entity.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../domain/repositories/i_events_repository.dart';
import '../../domain/requests/get_event_request.dart';
import '../../domain/requests/get_events_request.dart';
import '../datasources/remote/events_remote_impl.dart';
import '../datasources/remote/i_events_remote.dart';

@named
@LazySingleton(as: IEventsRepository)
class EventsRepositoryImpl implements IEventsRepository {
  final IEventsRemote _eventsImpl;

  EventsRepositoryImpl(@Named.from(EventsRemoteImpl) this._eventsImpl);

  @override
  Future<Either<DomainException, List<EventEntity>>> getEvents(
      GetEventsRequest request) async {
    try {
      final requests = await _eventsImpl.getEvents(request);
      return requests.fold(
        (error) => Left(error),
        (result) {
          return Right(result);
        },
      );
    } catch (e) {
      log(e.toString(), name: 'EventsRepositoryImpl', error: e);
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, EventEntity>> getEvent(
      GetEventRequest request) async {
    try {
      final requests = await _eventsImpl.getEvent(request);
      return requests.fold(
        (error) => Left(error),
        (result) {
          return Right(result);
        },
      );
    } catch (e, stackTrace) {
      log(
        e.toString(),
        name: 'EventsRepositoryImpl',
        error: e,
        stackTrace: stackTrace,
      );
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, void>> patchEvent(PatchEventRequest request) async{
    try {
      return await _eventsImpl.patchEvent(request);
    } catch (e, stackTrace) {
      log(
        e.toString(),
        name: 'EventsRepositoryImpl',
        error: e,
        stackTrace: stackTrace,
      );
      return Left(UnknownException(message: e.toString()));
    }
  }
}
