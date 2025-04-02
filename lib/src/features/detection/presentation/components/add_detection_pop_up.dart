import 'package:kepler_vision/src/app/imports.dart';
import 'package:kepler_vision/src/features/detection/presentation/components/detection_subject_tile.dart';

class AddDetectionPopUp extends StatefulWidget {
  const AddDetectionPopUp({super.key});

  @override
  State<AddDetectionPopUp> createState() => _AddDetectionPopUpState();
}

class _AddDetectionPopUpState extends State<AddDetectionPopUp> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 10),
        DetectionSubjectTile(),
        SizedBox(height: 4),
        DetectionSubjectTile(),
      ],
    );
  }
}
