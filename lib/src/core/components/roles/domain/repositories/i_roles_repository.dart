import 'package:fpdart/fpdart.dart';
import 'package:kepler_vision/src/features/settings/domain/entities/role_entity.dart';

import '../../../../exceptions/domain_exception.dart' show DomainException;

abstract interface class IRolesRepository {
  Stream<List<RoleEntity>> get availableRolesStream;
  Stream<RoleEntity?> get selectedRoleStream;
  Future<Either<DomainException, List<RoleEntity>>> getRoles();
  Future<Either<DomainException, RoleEntity>> getRole();
  Future<Either<DomainException, void>> setRole(RoleEntity role);
}
