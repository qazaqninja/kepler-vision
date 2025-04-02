import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kepler_vision/src/app/imports.dart';
import 'package:kepler_vision/src/core/components/roles/presentation/bloc/role_cubit.dart';
import 'package:kepler_vision/src/core/components/roles/presentation/bloc/role_state.dart';
import 'package:kepler_vision/src/features/review/presentation/pages/psychologist_review_page.dart';
import 'package:kepler_vision/src/features/settings/domain/entities/role_entity.dart';

import '../../../parent/presentation/parent_events_page.dart';
import 'class_teacher_review_page.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoleCubit, RoleState>(builder: (context, state) {
      return switch (state.currentRole?.title) {
        RoleEntity.teacher => const ClassTeacherReviewPage(),
        RoleEntity.psychologist => const PsychologistReviewPage(),
        RoleEntity.parent => const ParentEventsPage(),
        _ => const SizedBox(),
      };
    });
  }
}
