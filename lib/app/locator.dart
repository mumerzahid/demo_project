import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:stacked_services/stacked_services.dart';

import '../services/auth_service.dart';
import '../services/common_ui_service.dart';
import '../services/file_service.dart';
import '../services/image_service.dart';

final locator = GetIt.instance;

@injectableInit
void setupLocator() {
  locator.registerLazySingleton(() => CommonUiService());
  locator.registerLazySingleton(() => SnackbarService());
  locator.registerLazySingleton(() => AuthService());
  locator.registerLazySingleton(() => ImageService());
  locator.registerLazySingleton(() => FileService());

  // locator.registerSingleton<HomeViewModel>(HomeViewModel());
}
