import 'package:fpdart/fpdart.dart';
import 'package:kepler_vision/src/features/student/domain/entity/get_student_entity.dart';

import '../../../../../core/exceptions/domain_exception.dart';
import '../../../domain/requests/get_student_request.dart';

abstract class IStudentRemote {
  Future<Either<DomainException, GetStudentEntity>> getStudents(
    GetStudentRequest request,
  );
}
