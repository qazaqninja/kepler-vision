import 'package:kepler_vision/src/app/imports.dart';
import 'package:kepler_vision/src/core/extensions/build_context_extension.dart';
import 'package:kepler_vision/src/features/student/presentation/components/student_contact_tile.dart';
import 'package:kepler_vision/src/features/student/presentation/components/student_dossier_app_bar.dart';

class StudentDossierPage extends StatelessWidget {
  final String? firstName;
  final String? secondName;
  final String? className;
  final String? photoUrl;
  const StudentDossierPage({
    super.key,
    required this.firstName,
    required this.secondName,
    this.className,
    this.photoUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.gray100,
      appBar: StudentDossierAppBar(
        firstName: firstName ?? '',
        secondName: secondName ?? '',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Container(
            decoration: BoxDecoration(
              color: context.colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    child: photoUrl == null || photoUrl == ''
                        ? Image.asset(
                            'assets/app_images/person_placeholder.png',
                            width: double.infinity,
                            height: 343,
                            fit: BoxFit.fitHeight,
                          )
                        : Image.network(
                            photoUrl!,
                            width: double.infinity,
                            height: 343,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                width: double.infinity,
                                height: 343,
                                color: context.colors.gray200,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.person,
                                      size: 70,
                                      color: context.colors.gray500,
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      'Image not available',
                                      style: TextStyle(
                                        color: context.colors.gray600,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '$firstName $secondName',
                        style: context.typography.textlgSemibold.copyWith(
                          color: context.colors.black,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        className ?? '6Б класс',
                        style: context.typography.typography2Medium.copyWith(
                          color: context.colors.gray500,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Опекуны',
                        style: context.typography.textmdMedium.copyWith(
                          color: context.colors.black,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const StudentContactTile(
                        imagePath: 'assets/app_images/example.png',
                        firstName: 'Айдана',
                        secondName: 'Кайсар',
                        email: 'aidana-k@gmail.com',
                      ),
                      const Divider(),
                      Text(
                        'Классный руководитель',
                        style: context.typography.textmdMedium.copyWith(
                          color: context.colors.black,
                        ),
                      ),
                      const StudentContactTile(
                        imagePath: 'assets/app_images/example.png',
                        firstName: 'Кайрат',
                        secondName: 'Парасат',
                        email: 'kairat.p@gmail.com',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
