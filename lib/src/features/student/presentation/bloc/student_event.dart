part of 'student_bloc.dart';

@freezed
class StudentEvent with _$StudentEvent {
  factory StudentEvent.started() = _Started;
  factory StudentEvent.getStudents(GetStudentRequest request) = _GetStudents;
}
