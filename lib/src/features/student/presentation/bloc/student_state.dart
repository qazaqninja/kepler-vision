part of 'student_bloc.dart';

@freezed
class StudentState with _$StudentState {
  const factory StudentState.loading() = _Loading;
  const factory StudentState.loaded({
    required StudentViewModel viewModel,
  }) = _Loaded;
  const factory StudentState.error(String error) = _Error;
}

@freezed
class StudentViewModel with _$StudentViewModel {
  factory StudentViewModel({
    GetStudentEntity? students,
  }) = _StudentViewModel;
}
