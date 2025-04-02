import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kepler_vision/src/core/base/base_usecase/use_case.dart';
import 'package:kepler_vision/src/core/components/roles/domain/repositories/i_roles_repository.dart';
import 'package:kepler_vision/src/core/exceptions/domain_exception.dart';
import 'package:kepler_vision/src/features/settings/domain/entities/role_entity.dart';

@lazySingleton
class GetAvailableRolesUseCase
    extends NoneInputBoundaryUseCase<List<RoleEntity>> {
  final IRolesRepository _repository;

  GetAvailableRolesUseCase(this._repository);

  @override
  Future<Either<DomainException, List<RoleEntity>>> execute() async =>
      _repository.getRoles();
}
