import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kepler_vision/src/app/imports.dart';
import 'package:kepler_vision/src/core/extensions/build_context_extension.dart';
import 'package:kepler_vision/src/core/widgets/popups/sheet_popup.dart';
import 'package:kepler_vision/src/features/camera/domain/entities/enums/sorting_options.dart';
import 'package:kepler_vision/src/features/camera/presentation/bloc/camera_bloc.dart';
import 'package:kepler_vision/src/features/camera/presentation/bloc/camera_state.dart';
import 'package:kepler_vision/src/features/camera/presentation/components/camera_sort_view.dart';

Future<void> showCameraSortPopup(
  BuildContext context, {
  required CameraSorting initialSort,
  required void Function(CameraSorting)? onSortUpdated,
}) {
  return showSheetPopup(
    context,
    title: Text(
      context.loc.sort,
      style: context.typography.typography3SemiBold.copyWith(
        color: context.colors.black,
      ),
    ),
    builder: (_) => BlocProvider.value(
      value: context.read<CameraBloc>(),
      child: BlocBuilder<CameraBloc, CameraState>(
        builder: (context, state) {
          return CameraSortView(
            initialValue: initialSort,
            onSortUpdated: (sort) {
              onSortUpdated?.call(sort);
              context.pop();
            },
          );
        },
      ),
    ),
  );
}
