import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../../../core/services/auth/models/update_password_request.dart';
import '../../../../core/services/auth/models/update_password_response.dart';
import '../../data/repositories/i_auth_repository.dart';
import '../repositories/auth_repository_impl.dart';

@lazySingleton
class UpdatePasswordUseCase
    extends UseCase<UpdatePasswordResponse, UpdatePasswordRequest> {
  final IAuthRepository _authRepository;

  UpdatePasswordUseCase(@Named.from(AuthRepositoryImpl) this._authRepository);

  @override
  Future<Either<DomainException, UpdatePasswordResponse>> execute(
          requestModel) async =>
      _authRepository.updatePassword(requestModel);
}
