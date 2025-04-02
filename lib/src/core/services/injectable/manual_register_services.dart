import 'package:dio/dio.dart';
import 'package:kepler_vision/src/core/api/client/rest/dio/dio_client.dart';
import 'package:kepler_vision/src/core/api/websocket/web_socket_service.dart';
import 'package:kepler_vision/src/core/services/auth/i_auth_service.dart';
import 'package:kepler_vision/src/core/services/injectable/service_register_proxy.dart';
import 'package:kepler_vision/src/core/services/storage/storage_service.dart';
import 'package:kepler_vision/src/core/services/storage/storage_service_impl.dart';
import 'package:kepler_vision/src/features/analytics/domain/usecases/get_analytics_use_case.dart';
import 'package:kepler_vision/src/features/analytics/domain/usecases/get_hot_spots_use_case.dart';
import 'package:kepler_vision/src/features/analytics/domain/usecases/get_problem_classes_use_case.dart';
import 'package:kepler_vision/src/features/analytics/presentation/bloc/analytic_bloc.dart';
import 'package:kepler_vision/src/features/events/data/datasources/remote/events_remote_impl.dart';
import 'package:kepler_vision/src/features/events/data/datasources/remote/i_events_remote.dart';
import 'package:kepler_vision/src/features/events/data/repositories/events_repository_impl.dart';
import 'package:kepler_vision/src/features/events/domain/repositories/i_events_repository.dart';
import 'package:kepler_vision/src/features/events/domain/usecases/get_events_use_case.dart';
import 'package:kepler_vision/src/features/notifications/domain/usecases/get_notification_use_case.dart';
import 'package:kepler_vision/src/features/notifications/presentation/bloc/notification_bloc.dart';
import 'package:kepler_vision/src/features/student/domain/usecases/get_student_use_case.dart';
import 'package:kepler_vision/src/features/student/presentation/bloc/student_bloc.dart';

import '../../../features/login/domain/usecases/forgot_password_use_case.dart';
import '../../../features/login/domain/usecases/get_user_use_case.dart';
import '../../../features/login/domain/usecases/login_use_case.dart';
import '../../../features/login/domain/usecases/refresh_token_use_case.dart';
import '../../../features/login/domain/usecases/update_password_use_case.dart';
import '../../../features/login/domain/usecases/verify_user_case.dart';
import '../../../features/login/presentation/bloc/auth_bloc.dart';
import '../../../features/profile_page/domain/usecases/get_profile_use_case.dart';
import '../../../features/profile_page/presentation/bloc/profile_bloc.dart';
import '../../../features/settings/presentation/bloc/settings_bloc.dart';
import '../auth/auth_service_impl.dart';
import 'injectable_service.dart';

void manualRegisterServices() {
  getIt.registerBloc(
    () => ProfileBloc(
      getIt<GetProfileUseCase>(),
    ),
  );

  getIt.registerLazySingleton<WebSocketService>(
    () => WebSocketService(),
  );
  getIt.registerLazySingleton<Dio>(() {
    final dio = Dio(BaseOptions(
      baseUrl: 'https://education.greeneye.kz/api',
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 3),
    ));

    // Add logging interceptor if needed
    dio.interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
    ));

    return dio;
  });

  getIt.registerBloc<AuthBloc>(
    factory: true,
    () => AuthBloc(
      getIt<LoginUseCase>(),
      getIt<GetUserUseCase>(),
      getIt<VerifyUseCase>(),
      getIt<ForgotPasswordUseCase>(),
      getIt<UpdatePasswordUseCase>(),
      getIt<RefreshTokenUseCase>(),
    ),
  );
  getIt.registerBloc<StudentBloc>(
    factory: true,
    () => StudentBloc(
      getIt<GetStudentUseCase>(),
    ),
  );
  getIt.registerBloc<NotificationBloc>(
    factory: true,
    () => NotificationBloc(
      getIt<GetNotificationUseCase>(),
    ),
  );
  getIt.registerBloc<AnalyticBloc>(
    factory: true,
    () => AnalyticBloc(
      getIt<GetAnalyticsUseCase>(),
      getIt<GetHotSpotsUseCase>(),
      getIt<GetProblemClassesUseCase>(),
    ),
  );

  // Register Storage Service
  getIt.registerLazySingleton<StorageService>(() => StorageServiceImpl());

  // Register IAuthService if needed for other parts of the app
  if (!getIt.isRegistered<IAuthService>(instanceName: 'AuthServiceImpl')) {
    getIt.registerLazySingleton<IAuthService>(
      () => AuthServiceImpl(getIt()),
      instanceName: 'AuthServiceImpl',
    );
  }

  getIt.registerBloc<SettingsBloc>(
    factory: true,
    () => SettingsBloc(),
  );

  // Register Events Related Services
  // First register DioRestClient if not already registered
  if (!getIt.isRegistered<DioRestClient>()) {
    getIt.registerLazySingleton<DioRestClient>(() => DioRestClient());
  }

  // Register IEventsRemote implementation
  if (!getIt.isRegistered<IEventsRemote>(instanceName: 'EventsRemoteImpl')) {
    getIt.registerLazySingleton<IEventsRemote>(
      () => EventsRemoteImpl(getIt<DioRestClient>()),
      instanceName: 'EventsRemoteImpl',
    );
  }

  // Register IEventsRepository implementation
  if (!getIt.isRegistered<IEventsRepository>(instanceName: 'EventsRepositoryImpl')) {
    getIt.registerLazySingleton<IEventsRepository>(
      () => EventsRepositoryImpl(getIt<IEventsRemote>(instanceName: 'EventsRemoteImpl')),
      instanceName: 'EventsRepositoryImpl',
    );
  }

  // Register GetEventsUseCase
  if (!getIt.isRegistered<GetEventsUseCase>()) {
    getIt.registerLazySingleton(() => GetEventsUseCase(
          getIt<IEventsRepository>(instanceName: 'EventsRepositoryImpl'),
        ));
  }
}
