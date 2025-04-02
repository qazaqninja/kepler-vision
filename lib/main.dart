import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kepler_vision/src/app/application.dart';
import 'package:kepler_vision/src/core/components/roles/presentation/bloc/role_cubit.dart';

import 'src/app/imports.dart';
import 'src/core/services/injectable/injectable_service.dart';
import 'src/core/services/storage/storage_service_impl.dart';

final StorageServiceImpl storageService = StorageServiceImpl();

void main([List<String>? args, AppFlavor flavor = AppFlavor.production]) async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await storageService.init();
  debugPrint('Initial client ID from storage: ${storageService.getClientId()}');

  await configureDependencies();
  // await FirebaseManager.initialize();

  // Initialize chat service
  // await ChatService.initializeChat();

  // UIHelpers.statusBarTheme();
  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  // await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  // Prevent landscape mode5
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (_) {
      runApp(
        Material(
          child: MultiBlocProvider(
            providers: [
              BlocProvider(create: (_) => getIt<RoleCubit>()),
            ],
            child: MainApp(
              flavor: AppFlavor.production,
            ),
          ),
        ),
      );
    },
  );
}
