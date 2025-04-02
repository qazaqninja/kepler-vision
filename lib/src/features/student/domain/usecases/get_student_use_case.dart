import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kepler_vision/src/features/student/domain/entity/get_student_entity.dart';
import 'package:kepler_vision/src/features/student/domain/requests/get_student_request.dart';
import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../data/repositories/student_repository_impl.dart';
import '../repositories/i_student_repository.dart';

@lazySingleton
class GetStudentUseCase extends UseCase<GetStudentEntity, GetStudentRequest> {
  final IStudentRepository _repository;

  GetStudentUseCase(@Named.from(StudentRepositoryImpl) this._repository);

  @override
  Future<Either<DomainException, GetStudentEntity>> execute(GetStudentRequest requestModel) {
    return _repository.getStudents(requestModel);
  }
}
