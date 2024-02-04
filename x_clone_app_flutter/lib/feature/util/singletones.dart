import 'package:get_it/get_it.dart';
import 'package:x_clone_app_flutter/serverpod/api_client.dart';

GetIt singleton = GetIt.instance;

Future<void> initSingletons() async {
  singleton.registerSingleton<ApiClient>(ApiClientImplementation());
  await singleton<ApiClient>().init();
}
