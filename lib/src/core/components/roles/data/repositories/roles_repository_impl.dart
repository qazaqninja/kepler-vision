import 'dart:async';
import 'dart:convert';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:jwt_decode/jwt_decode.dart';
import 'package:kepler_vision/src/core/components/roles/domain/repositories/i_roles_repository.dart';
import 'package:kepler_vision/src/core/exceptions/domain_exception.dart';
import 'package:kepler_vision/src/core/services/auth/auth_service_impl.dart';
import 'package:kepler_vision/src/core/services/auth/i_auth_service.dart';
import 'package:kepler_vision/src/core/services/storage/storage_service.dart';
import 'package:kepler_vision/src/features/settings/domain/entities/role_entity.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IRolesRepository)
class RolesRepositoryImpl implements IRolesRepository {
  final StorageService storageService;

  RolesRepositoryImpl(
    this.storageService,
    @Named.from(AuthServiceImpl) IAuthService authService,
  ) {
    authService.tokenAuthStream.listen(_onAuth);
    getRoles().then(
      (value) =>
          _availableRolesStreamController.add(value.fold((_) => [], (e) => e)),
    );
    getRole().then(
      (value) => _selectedRoleStreamController.add(
        value.fold((_) => null, (e) => e),
      ),
    );
  }

  void _onAuth(String token) {
    final roles = _parseRoles(token);
    final defaultRole = roles.first;
    storageService.setRole(jsonEncode(defaultRole.toJson()));
    _selectedRoleStreamController.add(defaultRole);
    _availableRolesStreamController.add(roles);
  }

  final _availableRolesStreamController = BehaviorSubject<List<RoleEntity>>();

  final _selectedRoleStreamController = BehaviorSubject<RoleEntity?>();

  @override
  Stream<List<RoleEntity>> get availableRolesStream =>
      _availableRolesStreamController.stream;

  @override
  Future<Either<DomainException, void>> setRole(RoleEntity role) async {
    storageService.setRole(jsonEncode(role.toJson()));
    _selectedRoleStreamController.add(role);
    return Right(null);
  }

  @override
  Future<Either<DomainException, RoleEntity>> getRole() async {
    final role = storageService.getRole();
    if (role == null) {
      final roles = await getRoles();
      return roles.map((value) {
        final defaultRole = value.first;
        storageService.setRole(jsonEncode(defaultRole.toJson()));
        return defaultRole;
      });
    }
    final roleParsed = RoleEntity.fromJson(jsonDecode(role));
    return Right(roleParsed);
  }

  @override
  Future<Either<DomainException, List<RoleEntity>>> getRoles() async {
    final token = storageService.getToken();
    if (token == null) {
      return Left(AuthenticationException.unauthorized());
    }
    final roles = _parseRoles(token);
    return Right(roles);
  }

  List<RoleEntity> _parseRoles(String token) {
    final claims = Jwt.parseJwt(token);
    //TODO figure out with schools
    final roles = claims["schools"][0]["roles"] as List<dynamic>;
    return roles
        .map(
          (json) => RoleEntity.fromJson(json as Map<String, dynamic>),
        )
        .toList();
  }

  @override
  Stream<RoleEntity?> get selectedRoleStream =>
      _selectedRoleStreamController.stream;
}
