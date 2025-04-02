import 'dart:developer';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/exceptions/domain_exception.dart';
import '../../domain/repositories/i_profile_repository.dart';
import '../../domain/requests/get_profile_request.dart';
import '../datasources/remote/i_profile_remote.dart';
import '../datasources/remote/profile_remote_impl.dart';
import '../models/profile_entity.dart';

@named
@LazySingleton(as: IProfileRepository)
class ProfileRepositoryImpl implements IProfileRepository {
  final IProfileRemote _profileImpl;
  ProfileRepositoryImpl(@Named.from(ProfileRemoteImpl) this._profileImpl);

  @override
  Future<Either<DomainException, ProfileEntity>> getProfile(
      GetProfileRequest request) async {
    try {
      final requests = await _profileImpl.getProfile(request);
      return requests.fold(
        (error) => Left(error),
        (result) {
          return Right(result);
        },
      );
    } catch (e) {
      log(e.toString(), name: 'ProfileRepositoryImpl', error: e);
      return Left(UnknownException(message: e.toString()));
    }
  }
}
