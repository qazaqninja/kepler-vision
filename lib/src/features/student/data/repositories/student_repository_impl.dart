import 'dart:developer';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kepler_vision/src/features/student/domain/entity/get_student_entity.dart';
import 'package:kepler_vision/src/features/student/domain/requests/get_student_request.dart';

import '../../../../core/exceptions/domain_exception.dart';
import '../../domain/repositories/i_student_repository.dart';
import '../datasources/remote/i_student_remote.dart';
import '../datasources/remote/student_remote_impl.dart';

@named
@LazySingleton(as: IStudentRepository)
class StudentRepositoryImpl implements IStudentRepository {
  final IStudentRemote _repoImpl;
  StudentRepositoryImpl(@Named.from(StudentRemoteImpl) this._repoImpl);

  @override
  Future<Either<DomainException, GetStudentEntity>> getStudents(GetStudentRequest request) async {
    try {
      final requests = await _repoImpl.getStudents(request);

      return requests.fold(
        (error) => Left(error),
        (response) {
          return Right(response);
        },
      );
    } catch (e) {
      log(e.toString(), name: 'StudentRepositoryImpl', error: e);
      return Left(UnknownException(message: e.toString()));
    }
  }
}
