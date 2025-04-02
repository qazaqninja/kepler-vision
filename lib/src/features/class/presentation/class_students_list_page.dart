import 'package:kepler_vision/src/app/imports.dart';
import 'package:kepler_vision/src/core/base/base_bloc/bloc/base_bloc_widget.dart';
import 'package:kepler_vision/src/core/extensions/build_context_extension.dart';
import 'package:kepler_vision/src/core/router/router.dart';
import 'package:kepler_vision/src/core/services/injectable/injectable_service.dart';
import 'package:kepler_vision/src/features/class/presentation/components/app_bar/class_students_list_app_bar.dart';
import 'package:kepler_vision/src/features/class/presentation/components/class_students_list_tile_shimmer.dart';
import 'package:kepler_vision/src/features/student/domain/requests/get_student_request.dart';
import 'package:kepler_vision/src/features/student/presentation/bloc/student_bloc.dart';

class ClassStudentsListPage extends StatelessWidget {
  final String className;
  final int studentsCount;
  const ClassStudentsListPage({super.key, required this.className, required this.studentsCount});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.gray100,
      appBar: ClassStudentsListAppBar(
        className: className,
        studentsCount: studentsCount,
      ),
      body: BaseBlocWidget<StudentBloc, StudentEvent, StudentState>(
        bloc: getIt<StudentBloc>(),
        starterEvent: StudentEvent.getStudents(
          const GetStudentRequest(
            schoolId: '1',
          ),
        ),
        builder: (context, state, bloc) {
          return state.maybeWhen(
            orElse: () => const ClassStudentsListTileShimmer(),
            error: (value) => const ClassStudentsListTileShimmer(),
            loaded: (viewModel) {
              final students = viewModel.students;
              return Column(
                children: [
                  const SizedBox(height: 8),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: context.colors.white,
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: ListView.separated(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      itemCount: students!.data.length,
                      separatorBuilder: (context, index) => const Divider(),
                      itemBuilder: (context, index) {
                        final student = students.data[index];
                        return ListTile(
                          onTap: () => context.push(
                            RoutePaths.studentDossier,
                            extra: {
                              'firstName': student.fullName,
                              'secondName': student.fullName,
                              'className': student.className,
                              'photoUrl': student.base64Image,
                            },
                          ),
                          contentPadding: const EdgeInsets.all(0),
                          leading: Container(
                            width: 45,
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            decoration: BoxDecoration(
                              color: context.colors.avatarLightPurple,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              '${student.fullName[0]}${student.fullName[0]}',
                              style: context.typography.textmdMedium.copyWith(
                                color: context.colors.avatarPurple,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          title: Text(
                            '${student.fullName} ${student.fullName[0]}.',
                            style: context.typography.textmdMedium.copyWith(
                              color: context.colors.black,
                            ),
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                '${0} ${context.loc.event}',
                                style: context.typography.textsmMedium.copyWith(
                                  color: context.colors.gray500,
                                ),
                              ),
                              const SizedBox(width: 4),
                              Icon(
                                context.icons.chevron_right,
                                size: 24,
                                color: context.colors.gray500,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
