import 'package:kepler_vision/src/app/imports.dart';
import 'package:kepler_vision/src/core/extensions/build_context_extension.dart';
import 'package:kepler_vision/src/core/services/auth/models/models.dart';
import 'package:kepler_vision/src/core/services/injectable/injectable_service.dart';
import 'package:kepler_vision/src/features/forgot_password/presentation/forgot_password_app_bar.dart';
import 'package:kepler_vision/src/features/login/domain/usecases/forgot_password_use_case.dart';

import '../../../core/router/router.dart';
import 'components/forgot_password_first_page.dart';
import 'components/forgot_password_second_page.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();

  final PageController pageController = PageController();

  String email = '';

  @override
  void dispose() {
    emailController.dispose();
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ForgotPasswordAppBar(),
      backgroundColor: context.colors.gray100,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height:
                MediaQuery.of(context).size.height - AppBar().preferredSize.height - MediaQuery.of(context).padding.top,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  controller: pageController,
                  onPageChanged: (value) {},
                  children: [
                    ForgotPasswordFirstPage(
                      formKey: _formKey,
                      emailController: emailController,
                      pageController: pageController,
                      callback: () {
                        if (_formKey.currentState!.validate()) {
                          if (pageController.page! < 1) {
                            pageController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );

                            getIt<ForgotPasswordUseCase>().execute(
                              ForgotPasswordRequest(
                                usernameOrEmail: emailController.text,
                              ),
                            );

                            setState(() {
                              email = emailController.text;
                            });
                          }
                        }
                      },
                    ),
                    ForgotPasswordSecondPage(
                      email: email,
                      pageController: pageController,
                      callback: () {
                        context.go(RoutePaths.login);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
