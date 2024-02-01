import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'package:x_clone_app_client/x_clone_app_client.dart';

final clientProvider = Provider<Client>((ref) {
  return Client('http://$localhost:8080/')
    ..connectivityMonitor = FlutterConnectivityMonitor();
});
