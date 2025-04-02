import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kepler_vision/src/core/base/base_bloc/bloc/base_bloc.dart';
import 'package:kepler_vision/src/core/base/base_usecase/result.dart';
import 'package:kepler_vision/src/core/exceptions/domain_exception.dart';
import 'package:kepler_vision/src/features/student/domain/entity/get_student_entity.dart';
import 'package:kepler_vision/src/features/student/domain/requests/get_student_request.dart';
import 'package:kepler_vision/src/features/student/domain/usecases/get_student_use_case.dart';

part 'student_bloc.freezed.dart';
part 'student_event.dart';
part 'student_state.dart';

class StudentBloc extends BaseBloc<StudentEvent, StudentState> {
  StudentBloc(
    this.getStudentUseCase,
  ) : super(const StudentState.loading());

  final GetStudentUseCase getStudentUseCase;

  StudentViewModel _studentViewModel = StudentViewModel();

  @override
  Future<void> onEventHandler(StudentEvent event, Emitter emit) async {
    await event.when(
      started: () => _started(
        event as _Started,
      ),
      getStudents: (request) => _getStudents(
        event as _GetStudents,
        emit as Emitter<StudentState>,
      ),
    );
  }

  Future<void> _started(_Started event) async {}

  Future<void> _getStudents(_GetStudents event, Emitter<StudentState> emit) async {
    emit(const StudentState.loading());
    final Result<GetStudentEntity, DomainException> result = await getStudentUseCase.call(event.request);

    final data = result.data;

    if (data != null) {
      _studentViewModel = _studentViewModel.copyWith(students: data);
      return emit(
        _Loaded(
          viewModel: _studentViewModel.copyWith(
            students: data,
          ),
        ),
      );
    }
    return emit(_Error(result.failure!.message));
  }
}
