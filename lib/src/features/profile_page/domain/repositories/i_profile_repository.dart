import 'package:fpdart/fpdart.dart';

import '../../../../core/exceptions/domain_exception.dart';
import '../../data/models/profile_entity.dart';
import '../requests/get_profile_request.dart';

abstract class IProfileRepository {
  Future<Either<DomainException, ProfileEntity>> getProfile(
    GetProfileRequest request,
  );
}
