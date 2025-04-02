import 'dart:io' as io;

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kepler_vision/src/core/components/events/domain/models/event_entity.dart';
import 'package:kepler_vision/src/features/events/domain/requests/patch_event_request.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:video_thumbnail/video_thumbnail.dart';

import '../../../../../core/api/client/endpoints.dart';
import '../../../../../core/api/client/rest/dio/dio_client.dart';
import '../../../../../core/exceptions/domain_exception.dart';
import '../../../../../core/services/storage/storage_service_impl.dart';
import '../../../domain/requests/get_event_request.dart';
import '../../../domain/requests/get_events_request.dart';
import 'i_events_remote.dart';

@named
@LazySingleton(as: IEventsRemote)
class EventsRemoteImpl implements IEventsRemote {
  EventsRemoteImpl(this.client);

  final DioRestClient client;
  StorageServiceImpl st = StorageServiceImpl();
  Map<String, String> headers = {
    'accept': 'application/json',
    'Authorization': 'Bearer ${StorageServiceImpl().getToken()}',
  };

  @override
  Future<Either<DomainException, List<EventEntity>>> getEvents(
      GetEventsRequest request) async {
    final queryParams = <String, dynamic>{};

    if (request.limit != null) {
      queryParams['limit'] = request.limit;
    }

    if (request.startDate != null) {
      queryParams['start_date'] = request.startDate;
    }

    if (request.endDate != null) {
      queryParams['end_date'] = request.endDate;
    }

    if (request.status != null) {
      queryParams['status'] = request.status?.code;
    }
    if (request.processedStatus != null) {
      queryParams['processed_status'] = request.processedStatus;
    }

    final Either<DomainException, Response<dynamic>> response =
        await client.get(
      '${EndPoints.baseUrl}/schools/${request.schoolId}/events',
      queryParameters: queryParams,
      options: Options(
        method: 'GET',
        headers: headers,
      ),
    );

    return response.fold(
      (error) => Left(error),
      (result) {
        if (result.statusCode == 200) {
          try {
            return Right((result.data['data'] as List)
                .map((e) => EventEntity.fromJson(e))
                .toList());
          } catch (e) {
            return Left(
              UnknownException(message: 'Failed to parse response: $e'),
            );
          }
        } else {
          return Left(
            UnknownException(message: result.statusMessage ?? 'Unknown error'),
          );
        }
      },
    );
  }

  @override
  Future<Either<DomainException, EventEntity>> getEvent(
      GetEventRequest request) async {
    final Either<DomainException, Response<dynamic>> response =
        await client.get(
      '${EndPoints.baseUrl}/schools/${request.schoolId}/events/${request.eventId}',
      options: Options(
        method: 'GET',
        headers: headers,
      ),
    );

    return response.fold(
      (error) => Left(error),
      (result) async {
        if (result.statusCode == 200) {
          try {
            final event = EventEntity.fromJson(result.data['data']);
            //TODO replace with absolute path when back done
            const newVideoUrl =
                "https://videos.pexels.com/video-files/31206076/13329169_2560_1440_60fps.mp4";
            final dir = await path_provider.getApplicationCacheDirectory();

            final thumbnailFile =
                io.File("${dir.path}/event_thumbnails/${event.id}.png");
            if (!thumbnailFile.existsSync()) {
              thumbnailFile.parent.createSync(recursive: true);
              await VideoThumbnail.thumbnailFile(
                video: newVideoUrl,
                thumbnailPath: thumbnailFile.path,
              );
            }
            return Right(
              event.copyWith(
                videoUrl: newVideoUrl,
                videoThumbnailPath: thumbnailFile.path,
              ),
            );
          } catch (e) {
            return Left(
              UnknownException(message: 'Failed to parse response: $e'),
            );
          }
        } else {
          return Left(
            UnknownException(message: result.statusMessage ?? 'Unknown error'),
          );
        }
      },
    );
  }

  @override
  Future<Either<DomainException, void>> patchEvent(
      PatchEventRequest request) async {
    final Either<DomainException, Response<dynamic>> response =
        await client.patch(
      '${EndPoints.baseUrl}/schools/${request.schoolId}/events/${request.eventId}',
      data: request.toJson(),
      options: Options(
        method: 'GET',
        headers: headers,
      ),
    );

    return response.fold(
      (error) => Left(error),
      (result) async {
        if (result.statusCode == 200) {
          return Right(null);
        } else {
          return Left(
            UnknownException(message: result.statusMessage ?? 'Unknown error'),
          );
        }
      },
    );
  }
}
