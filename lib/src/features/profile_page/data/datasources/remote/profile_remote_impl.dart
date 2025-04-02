import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/api/client/endpoints.dart';
import '../../../../../core/api/client/rest/dio/dio_client.dart';
import '../../../../../core/exceptions/domain_exception.dart';
import '../../../../../core/services/storage/storage_service_impl.dart';
import '../../../domain/requests/get_profile_request.dart';
import '../../models/profile_entity.dart';
import 'i_profile_remote.dart';

@named
@LazySingleton(as: IProfileRemote)
class ProfileRemoteImpl implements IProfileRemote {
  ProfileRemoteImpl(this.client);
  final DioRestClient client;
  StorageServiceImpl st = StorageServiceImpl();
  Map<String, String> headers = {
    'accept': 'application/json',
    'Authorization': 'Bearer ${StorageServiceImpl().getToken()}',
  };

  @override
  Future<Either<DomainException, ProfileEntity>> getProfile(
      GetProfileRequest request) async {
    final Either<DomainException, Response<dynamic>> response =
        await client.get(
      '${EndPoints.baseUrl}/users/me/profile',
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
            return Right(ProfileEntity.fromJson(result.data['data']));
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
}
