import 'package:fpdart/fpdart.dart';
import 'package:kepler_vision/src/features/student/domain/entity/get_student_entity.dart';

import '../../../../core/exceptions/domain_exception.dart';
import '../requests/get_student_request.dart';

abstract class IStudentRepository {
  Future<Either<DomainException, GetStudentEntity>> getStudents(
    GetStudentRequest request,
  );
}
