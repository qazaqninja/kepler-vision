import 'dart:developer';

import 'package:kepler_vision/src/app/imports.dart';
import 'package:kepler_vision/src/core/base/base_bloc/bloc/base_bloc_widget.dart';
import 'package:kepler_vision/src/core/extensions/build_context_extension.dart';
import 'package:kepler_vision/src/core/router/router.dart';
import 'package:kepler_vision/src/core/services/storage/storage_service_impl.dart';
import 'package:kepler_vision/src/features/login/presentation/components/password_text_form_field.dart';
import 'package:kepler_vision/src/features/login/presentation/custom_snack_bar.dart';

import '../../../core/services/injectable/injectable_service.dart';
import 'bloc/auth_bloc.dart';
import 'components/email_text_form_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  StorageServiceImpl storageService = StorageServiceImpl();

  AuthBloc authBloc = getIt<AuthBloc>();

  bool _isPasswordVisible = false;

  late String _passwordErrorText;

  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseBlocWidget<AuthBloc, AuthEvent, AuthState>(
      bloc: authBloc,
      listenWhen: (previous, current) {
        return current.maybeMap(
          error: (_) => true,
          loaded: (_) => true,
          orElse: () => false,
        );
      },
      listener: (context, state) {
        state.whenOrNull(
          error: (passwordErrorText) {
            _passwordController.clear();
            _emailController.clear();
            _formKey.currentState!.validate();
            ScaffoldMessenger.of(context).removeCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(
              CustomSnackBar.show(title: passwordErrorText, seconds: 3, context: context),
            );
          },
          loaded: (viewModel) {
            ScaffoldMessenger.of(context).removeCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(
              CustomSnackBar.show(title: context.loc.loggedInSuccessfully, seconds: 3, context: context),
            );

            storageService.setToken(viewModel.token);
            storageService.setRefreshToken(viewModel.refreshToken);

            log(viewModel.token);
            log(storageService.getRefreshToken()!);

            context.pushReplacement(RoutePaths.review);
          },
        );
      },
      builder: (context, state, bloc) {
        return Scaffold(
          backgroundColor: context.colors.gray100,
          body: SafeArea(
            top: true,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
                  decoration: BoxDecoration(
                    color: context.colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              context.loc.loginToAccount,
                              style: context.typography.textxlBold.copyWith(
                                color: context.colors.black,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              context.loc.theAccountIsIssuedByTheSchool,
                              style: context.typography.textmdRegular.copyWith(
                                color: context.colors.gray500,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              context.loc.mail,
                              style: context.typography.textsmMedium.copyWith(
                                color: context.colors.gray700,
                              ),
                            ),
                            const SizedBox(height: 6),
                            EmailTextFormField(
                              emailController: _emailController,
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              context.loc.password,
                              style: context.typography.textsmMedium.copyWith(
                                color: context.colors.gray700,
                              ),
                            ),
                            const SizedBox(height: 6),
                            PasswordTextFormField(
                              passwordController: _passwordController,
                              isPasswordVisible: _isPasswordVisible,
                              errorText: context.loc.pleaseEnterYourPassword,
                              onPasswordVisibilityChanged: () {
                                setState(() {
                                  _isPasswordVisible = !_isPasswordVisible;
                                });
                              },
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      // padding: EdgeInsets.zero,
                                      ),

                                  // formKey: _formKey,
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      setState(() {
                                        _passwordErrorText = context.loc.incorrectLoginOrPassword;
                                      });
                                      authBloc.add(
                                        AuthEvent.login(
                                          username: _emailController.text,
                                          password: _passwordController.text,
                                        ),
                                      );
                                      ScaffoldMessenger.of(context).showSnackBar(CustomSnackBar.show(
                                          title: context.loc.pleaseWait, seconds: 1, context: context));
                                    } else {
                                      setState(() {
                                        _passwordErrorText = context.loc.pleaseEnterYourPassword;
                                      });
                                    }
                                  },
                                  child: Text(context.loc.login)),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () {
                              context.pushNamed(RouteNames.forgotPassword);
                            },
                            child: Text(
                              context.loc.forgotYourPassword,
                              style: context.typography.textsmSemibold.copyWith(color: context.colors.gray600),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
