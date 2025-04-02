import 'package:fpdart/fpdart.dart';

import '../../../../../core/exceptions/domain_exception.dart';
import '../../../domain/requests/get_profile_request.dart';
import '../../models/profile_entity.dart';

abstract class IProfileRemote {
  Future<Either<DomainException, ProfileEntity>> getProfile(
    GetProfileRequest request,
  );
}
