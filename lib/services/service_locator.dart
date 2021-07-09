import 'package:get_it/get_it.dart';
import 'package:virtual_mask/viewmodel/viewmodel.dart';

final locator = GetIt.instance;

void setupLocator() {
  // locator.registerLazySingleton(()=>AccountViewModal());
  // GetIt has different methods to register types. registerSingleton ensures that you always get the same instance of the registered object.
  // As creating the instance on registration can be time consuming at app start-up
  // you can shift the creation
  // to the time the object is the first time requested with:
  // Only the first time you call get<HomeViewModel>() the passed factory function will be called.
  // After that you will always receive the same instance.
  locator.registerSingleton<AppSettingViewModel>(AppSettingViewModel());
  // locator.registerLazySingleton<AppSettingViewModel>(() => AppSettingViewModel());
  // locator.registerLazySingleton<HomeViewModel>(() => HomeViewModel());

}
