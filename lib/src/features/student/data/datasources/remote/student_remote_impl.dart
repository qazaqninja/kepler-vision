import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kepler_vision/src/features/student/domain/entity/get_student_entity.dart';
import 'package:kepler_vision/src/features/student/domain/requests/get_student_request.dart';

import '../../../../../core/api/client/endpoints.dart';
import '../../../../../core/api/client/rest/dio/dio_client.dart';
import '../../../../../core/exceptions/domain_exception.dart';
import '../../../../../core/services/storage/storage_service_impl.dart';
import 'i_student_remote.dart';

@named
@LazySingleton(as: IStudentRemote)
class StudentRemoteImpl implements IStudentRemote {
  StudentRemoteImpl(this.client);
  final DioRestClient client;
  StorageServiceImpl st = StorageServiceImpl();
  Map<String, String> headers = {
    'accept': 'application/json',
    'Authorization': 'Bearer ${StorageServiceImpl().getToken()}',
  };

  @override
  Future<Either<DomainException, GetStudentEntity>> getStudents(GetStudentRequest request) async {
    final Either<DomainException, Response<dynamic>> response = await client.get(
      '${EndPoints.baseUrl}/school/${request.schoolId}/students',
      options: Options(
        headers: headers,
      ),
    );

    return response.fold(
      (error) => Left(error),
      (result) async {
        return Right(
          GetStudentEntity.fromJson(result.data),
        );
      },
    );
  }
}
