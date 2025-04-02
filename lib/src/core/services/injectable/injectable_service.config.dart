// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:kepler_vision/src/core/api/client/rest/dio/dio_client.dart'
    as _i898;
import 'package:kepler_vision/src/core/components/roles/data/repositories/roles_repository_impl.dart'
    as _i186;
import 'package:kepler_vision/src/core/components/roles/domain/repositories/i_roles_repository.dart'
    as _i1000;
import 'package:kepler_vision/src/core/components/roles/domain/use_case/get_available_roles_stream_use_case.dart'
    as _i460;
import 'package:kepler_vision/src/core/components/roles/domain/use_case/get_available_roles_use_case.dart'
    as _i353;
import 'package:kepler_vision/src/core/components/roles/domain/use_case/get_current_role_stream_use_case.dart'
    as _i615;
import 'package:kepler_vision/src/core/components/roles/domain/use_case/get_current_role_use_case.dart'
    as _i816;
import 'package:kepler_vision/src/core/components/roles/domain/use_case/set_role_use_case.dart'
    as _i501;
import 'package:kepler_vision/src/core/components/roles/presentation/bloc/role_cubit.dart'
    as _i589;
import 'package:kepler_vision/src/core/services/auth/auth_service_impl.dart'
    as _i697;
import 'package:kepler_vision/src/core/services/auth/i_auth_service.dart'
    as _i74;
import 'package:kepler_vision/src/core/services/storage/storage_service.dart'
    as _i849;
import 'package:kepler_vision/src/features/actions/presentation/bloc/bloc/action_bloc.dart'
    as _i53;
import 'package:kepler_vision/src/features/analytics/data/datasources/remote/analytics_remote_impl.dart'
    as _i621;
import 'package:kepler_vision/src/features/analytics/data/datasources/remote/i_analytics_remote.dart'
    as _i266;
import 'package:kepler_vision/src/features/analytics/data/repositories/analytics_repository_impl.dart'
    as _i1033;
import 'package:kepler_vision/src/features/analytics/domain/repositories/i_analytics_repository.dart'
    as _i456;
import 'package:kepler_vision/src/features/analytics/domain/usecases/get_analytics_use_case.dart'
    as _i694;
import 'package:kepler_vision/src/features/analytics/domain/usecases/get_hot_spots_use_case.dart'
    as _i441;
import 'package:kepler_vision/src/features/analytics/domain/usecases/get_problem_classes_use_case.dart'
    as _i694;
import 'package:kepler_vision/src/features/attachment/data/datasources/remote/attachment_remote_impl.dart'
    as _i992;
import 'package:kepler_vision/src/features/attachment/data/datasources/remote/i_attachment_remote.dart'
    as _i714;
import 'package:kepler_vision/src/features/attachment/data/repositories/attachment_repository_impl.dart'
    as _i864;
import 'package:kepler_vision/src/features/attachment/domain/repositories/i_attachment_repository.dart'
    as _i790;
import 'package:kepler_vision/src/features/attachment/domain/usecases/add_attachment_use_case.dart'
    as _i825;
import 'package:kepler_vision/src/features/attachment/domain/usecases/get_attachment_use_case.dart'
    as _i587;
import 'package:kepler_vision/src/features/camera/presentation/bloc/camera_bloc.dart'
    as _i762;
import 'package:kepler_vision/src/features/class/presentation/bloc/class_bloc.dart'
    as _i548;
import 'package:kepler_vision/src/features/class_events/presentation/bloc/class_events_bloc.dart'
    as _i670;
import 'package:kepler_vision/src/features/detection/presentation/bloc/detection_bloc.dart'
    as _i542;
import 'package:kepler_vision/src/features/events/data/datasources/remote/events_remote_impl.dart'
    as _i989;
import 'package:kepler_vision/src/features/events/data/datasources/remote/i_events_remote.dart'
    as _i782;
import 'package:kepler_vision/src/features/events/data/repositories/events_repository_impl.dart'
    as _i890;
import 'package:kepler_vision/src/features/events/domain/repositories/i_events_repository.dart'
    as _i969;
import 'package:kepler_vision/src/features/events/domain/usecases/get_event_use_case.dart'
    as _i806;
import 'package:kepler_vision/src/features/events/domain/usecases/get_events_count_use_case.dart'
    as _i581;
import 'package:kepler_vision/src/features/events/domain/usecases/get_events_use_case.dart'
    as _i687;
import 'package:kepler_vision/src/features/events/presentation/bloc/events_bloc.dart'
    as _i636;
import 'package:kepler_vision/src/features/feedback/domain/use_cases/patch_event_use_case.dart'
    as _i1006;
import 'package:kepler_vision/src/features/feedback/presentation/bloc/feedback_bloc.dart'
    as _i281;
import 'package:kepler_vision/src/features/login/data/repositories/i_auth_repository.dart'
    as _i176;
import 'package:kepler_vision/src/features/login/domain/repositories/auth_repository_impl.dart'
    as _i536;
import 'package:kepler_vision/src/features/login/domain/usecases/forgot_password_use_case.dart'
    as _i138;
import 'package:kepler_vision/src/features/login/domain/usecases/get_user_use_case.dart'
    as _i997;
import 'package:kepler_vision/src/features/login/domain/usecases/login_use_case.dart'
    as _i388;
import 'package:kepler_vision/src/features/login/domain/usecases/refresh_token_use_case.dart'
    as _i807;
import 'package:kepler_vision/src/features/login/domain/usecases/update_password_use_case.dart'
    as _i986;
import 'package:kepler_vision/src/features/login/domain/usecases/verify_user_case.dart'
    as _i798;
import 'package:kepler_vision/src/features/notifications/data/datasources/remote/i_notification_remote.dart'
    as _i615;
import 'package:kepler_vision/src/features/notifications/data/datasources/remote/notification_remote_impl.dart'
    as _i74;
import 'package:kepler_vision/src/features/notifications/data/repositories/notification_repository_impl.dart'
    as _i87;
import 'package:kepler_vision/src/features/notifications/domain/repositories/i_notification_repository.dart'
    as _i929;
import 'package:kepler_vision/src/features/notifications/domain/usecases/get_notification_use_case.dart'
    as _i719;
import 'package:kepler_vision/src/features/parent/presentation/bloc/parent_bloc.dart'
    as _i440;
import 'package:kepler_vision/src/features/profile_page/data/datasources/remote/i_profile_remote.dart'
    as _i587;
import 'package:kepler_vision/src/features/profile_page/data/datasources/remote/profile_remote_impl.dart'
    as _i414;
import 'package:kepler_vision/src/features/profile_page/data/repositories/profile_repository_impl.dart'
    as _i821;
import 'package:kepler_vision/src/features/profile_page/domain/repositories/i_profile_repository.dart'
    as _i503;
import 'package:kepler_vision/src/features/profile_page/domain/usecases/get_profile_use_case.dart'
    as _i188;
import 'package:kepler_vision/src/features/review/presentation/bloc/review_bloc.dart'
    as _i382;
import 'package:kepler_vision/src/features/schedule/presentation/bloc/schedule_bloc.dart'
    as _i997;
import 'package:kepler_vision/src/features/settings/domain/usecases/change_password.dart'
    as _i537;
import 'package:kepler_vision/src/features/student/data/datasources/remote/i_student_remote.dart'
    as _i653;
import 'package:kepler_vision/src/features/student/data/datasources/remote/student_remote_impl.dart'
    as _i405;
import 'package:kepler_vision/src/features/student/data/repositories/student_repository_impl.dart'
    as _i282;
import 'package:kepler_vision/src/features/student/domain/repositories/i_student_repository.dart'
    as _i919;
import 'package:kepler_vision/src/features/student/domain/usecases/get_student_use_case.dart'
    as _i371;
import 'package:kepler_vision/src/features/teacher_review/presentation/bloc/teacher_review_bloc.dart'
    as _i1003;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i997.ScheduleBloc>(() => _i997.ScheduleBloc());
    gh.factory<_i1003.TeacherReviewBloc>(() => _i1003.TeacherReviewBloc());
    gh.factory<_i762.CameraBloc>(() => _i762.CameraBloc());
    gh.factory<_i440.ParentBloc>(() => _i440.ParentBloc());
    gh.factory<_i53.ActionBloc>(() => _i53.ActionBloc());
    gh.factory<_i548.ClassBloc>(() => _i548.ClassBloc());
    gh.factory<_i670.ClassEventsBloc>(() => _i670.ClassEventsBloc());
    gh.factory<_i542.DetectionBloc>(() => _i542.DetectionBloc());
    await gh.singletonAsync<_i898.DioRestClient>(
      () {
        final i = _i898.DioRestClient();
        return i.init().then((_) => i);
      },
      preResolve: true,
    );
    gh.lazySingleton<_i714.IAttachmentRemote>(
      () => _i992.AttachmentRemoteImpl(),
      instanceName: 'AttachmentRemoteImpl',
    );
    gh.lazySingleton<_i790.IAttachmentRepository>(
      () => _i864.AttachmentRepositoryImpl(
          gh<_i714.IAttachmentRemote>(instanceName: 'AttachmentRemoteImpl')),
      instanceName: 'AttachmentRepositoryImpl',
    );
    gh.lazySingleton<_i782.IEventsRemote>(
      () => _i989.EventsRemoteImpl(gh<_i898.DioRestClient>()),
      instanceName: 'EventsRemoteImpl',
    );
    gh.lazySingleton<_i74.IAuthService>(
      () => _i697.AuthServiceImpl(gh<_i898.DioRestClient>()),
      instanceName: 'AuthServiceImpl',
    );
    gh.lazySingleton<_i266.IAnalyticsRemote>(
      () => _i621.AnalyticsRemoteImpl(gh<_i898.DioRestClient>()),
      instanceName: 'AnalyticsRemoteImpl',
    );
    gh.lazySingleton<_i587.IProfileRemote>(
      () => _i414.ProfileRemoteImpl(gh<_i898.DioRestClient>()),
      instanceName: 'ProfileRemoteImpl',
    );
    gh.lazySingleton<_i537.ChangePassword>(
        () => _i537.ChangePassword(gh<_i176.IAuthRepository>()));
    gh.lazySingleton<_i1000.IRolesRepository>(() => _i186.RolesRepositoryImpl(
          gh<_i849.StorageService>(),
          gh<_i74.IAuthService>(instanceName: 'AuthServiceImpl'),
        ));
    gh.lazySingleton<_i176.IAuthRepository>(
      () => _i536.AuthRepositoryImpl(
          gh<_i74.IAuthService>(instanceName: 'AuthServiceImpl')),
      instanceName: 'AuthRepositoryImpl',
    );
    gh.lazySingleton<_i456.IAnalyticsRepository>(
      () => _i1033.AnalyticsRepositoryImpl(
          gh<_i266.IAnalyticsRemote>(instanceName: 'AnalyticsRemoteImpl')),
      instanceName: 'AnalyticsRepositoryImpl',
    );
    gh.lazySingleton<_i441.GetHotSpotsUseCase>(() => _i441.GetHotSpotsUseCase(
        gh<_i456.IAnalyticsRepository>(
            instanceName: 'AnalyticsRepositoryImpl')));
    gh.lazySingleton<_i694.GetAnalyticsUseCase>(() => _i694.GetAnalyticsUseCase(
        gh<_i456.IAnalyticsRepository>(
            instanceName: 'AnalyticsRepositoryImpl')));
    gh.lazySingleton<_i694.GetProblemClassesUseCase>(() =>
        _i694.GetProblemClassesUseCase(gh<_i456.IAnalyticsRepository>(
            instanceName: 'AnalyticsRepositoryImpl')));
    gh.lazySingleton<_i653.IStudentRemote>(
      () => _i405.StudentRemoteImpl(gh<_i898.DioRestClient>()),
      instanceName: 'StudentRemoteImpl',
    );
    gh.lazySingleton<_i615.INotificationRemote>(
      () => _i74.NotificationRemoteImpl(gh<_i898.DioRestClient>()),
      instanceName: 'NotificationRemoteImpl',
    );
    gh.lazySingleton<_i587.GetAttachmentUseCase>(() =>
        _i587.GetAttachmentUseCase(gh<_i790.IAttachmentRepository>(
            instanceName: 'AttachmentRepositoryImpl')));
    gh.lazySingleton<_i825.AddAttachmentUseCase>(() =>
        _i825.AddAttachmentUseCase(gh<_i790.IAttachmentRepository>(
            instanceName: 'AttachmentRepositoryImpl')));
    gh.lazySingleton<_i816.GetCurrentRoleUseCase>(
        () => _i816.GetCurrentRoleUseCase(gh<_i1000.IRolesRepository>()));
    gh.lazySingleton<_i615.GetCurrentRoleStreamUseCase>(
        () => _i615.GetCurrentRoleStreamUseCase(gh<_i1000.IRolesRepository>()));
    gh.lazySingleton<_i460.GetAvailableRolesStreamUseCase>(() =>
        _i460.GetAvailableRolesStreamUseCase(gh<_i1000.IRolesRepository>()));
    gh.lazySingleton<_i501.SetRoleUseCase>(
        () => _i501.SetRoleUseCase(gh<_i1000.IRolesRepository>()));
    gh.lazySingleton<_i353.GetAvailableRolesUseCase>(
        () => _i353.GetAvailableRolesUseCase(gh<_i1000.IRolesRepository>()));
    gh.lazySingleton<_i997.GetUserUseCase>(() => _i997.GetUserUseCase(
        gh<_i176.IAuthRepository>(instanceName: 'AuthRepositoryImpl')));
    gh.lazySingleton<_i798.VerifyUseCase>(() => _i798.VerifyUseCase(
        gh<_i176.IAuthRepository>(instanceName: 'AuthRepositoryImpl')));
    gh.lazySingleton<_i807.RefreshTokenUseCase>(() => _i807.RefreshTokenUseCase(
        gh<_i176.IAuthRepository>(instanceName: 'AuthRepositoryImpl')));
    gh.lazySingleton<_i388.LoginUseCase>(() => _i388.LoginUseCase(
        gh<_i176.IAuthRepository>(instanceName: 'AuthRepositoryImpl')));
    gh.lazySingleton<_i986.UpdatePasswordUseCase>(() =>
        _i986.UpdatePasswordUseCase(
            gh<_i176.IAuthRepository>(instanceName: 'AuthRepositoryImpl')));
    gh.lazySingleton<_i138.ForgotPasswordUseCase>(() =>
        _i138.ForgotPasswordUseCase(
            gh<_i176.IAuthRepository>(instanceName: 'AuthRepositoryImpl')));
    gh.lazySingleton<_i919.IStudentRepository>(
      () => _i282.StudentRepositoryImpl(
          gh<_i653.IStudentRemote>(instanceName: 'StudentRemoteImpl')),
      instanceName: 'StudentRepositoryImpl',
    );
    gh.lazySingleton<_i503.IProfileRepository>(
      () => _i821.ProfileRepositoryImpl(
          gh<_i587.IProfileRemote>(instanceName: 'ProfileRemoteImpl')),
      instanceName: 'ProfileRepositoryImpl',
    );
    gh.lazySingleton<_i969.IEventsRepository>(
      () => _i890.EventsRepositoryImpl(
          gh<_i782.IEventsRemote>(instanceName: 'EventsRemoteImpl')),
      instanceName: 'EventsRepositoryImpl',
    );
    gh.lazySingleton<_i929.INotificationRepository>(
      () => _i87.NotificationRepositoryImpl(gh<_i615.INotificationRemote>(
          instanceName: 'NotificationRemoteImpl')),
      instanceName: 'NotificationRepositoryImpl',
    );
    gh.factory<_i589.RoleCubit>(() => _i589.RoleCubit(
          gh<_i460.GetAvailableRolesStreamUseCase>(),
          gh<_i615.GetCurrentRoleStreamUseCase>(),
          gh<_i501.SetRoleUseCase>(),
        ));
    gh.lazySingleton<_i371.GetStudentUseCase>(() => _i371.GetStudentUseCase(
        gh<_i919.IStudentRepository>(instanceName: 'StudentRepositoryImpl')));
    gh.lazySingleton<_i719.GetNotificationUseCase>(() =>
        _i719.GetNotificationUseCase(gh<_i929.INotificationRepository>(
            instanceName: 'NotificationRepositoryImpl')));
    gh.lazySingleton<_i188.GetProfileUseCase>(() => _i188.GetProfileUseCase(
        gh<_i503.IProfileRepository>(instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i1006.PatchEventUseCase>(() => _i1006.PatchEventUseCase(
        gh<_i969.IEventsRepository>(instanceName: 'EventsRepositoryImpl')));
    gh.lazySingleton<_i581.GetEventsCountUseCase>(() =>
        _i581.GetEventsCountUseCase(
            gh<_i969.IEventsRepository>(instanceName: 'EventsRepositoryImpl')));
    gh.lazySingleton<_i687.GetEventsUseCase>(() => _i687.GetEventsUseCase(
        gh<_i969.IEventsRepository>(instanceName: 'EventsRepositoryImpl')));
    gh.lazySingleton<_i806.GetEventUseCase>(() => _i806.GetEventUseCase(
        gh<_i969.IEventsRepository>(instanceName: 'EventsRepositoryImpl')));
    gh.factory<_i382.ReviewBloc>(
        () => _i382.ReviewBloc(gh<_i687.GetEventsUseCase>()));
    gh.factoryParam<_i281.FeedbackBloc, int, dynamic>((
      eventId,
      _,
    ) =>
        _i281.FeedbackBloc(
          gh<_i806.GetEventUseCase>(),
          gh<_i1006.PatchEventUseCase>(),
          eventId: eventId,
        ));
    gh.factory<_i636.EventsBloc>(() => _i636.EventsBloc(
          gh<_i687.GetEventsUseCase>(),
          gh<_i581.GetEventsCountUseCase>(),
        ));
    return this;
  }
}
