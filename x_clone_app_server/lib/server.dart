import 'package:serverpod/serverpod.dart';

import 'package:x_clone_app_server/src/web/routes/root.dart';
import 'package:serverpod_auth_server/module.dart' as auth;

import 'src/generated/protocol.dart';
import 'src/generated/endpoints.dart';

// This is the starting point of your Serverpod server. In most cases, you will
// only need to make additions to this file if you add future calls,  are
// configuring Relic (Serverpod's web-server), or need custom setup work.

void run(List<String> args) async {
  // Initialize Serverpod and connect it with your generated code.
  final pod = Serverpod(
    args,
    Protocol(),
    Endpoints(),
  );

  // If you are using any future calls, they need to be registered here.
  // pod.registerFutureCall(ExampleFutureCall(), 'exampleFutureCall');

  // Setup a default page at the web root.
  pod.webServer.addRoute(RouteRoot(), '/');
  pod.webServer.addRoute(RouteRoot(), '/index.html');
  // Serve all files in the /static directory.
  pod.webServer.addRoute(
    RouteStaticDirectory(serverDirectory: 'static', basePath: '/'),
    '/*',
  );

  auth.AuthConfig.set(auth.AuthConfig(
    onUserCreated: (session, userInfo) async {
      print('User created: ${userInfo.email}');
      final userId = userInfo.id;
      if (userId == null) {
        print('User id is null');
        // TODO: Handle error
        return;
      }

      await User.db.insertRow(session, User(userInfoId: userId));
    },
    sendValidationEmail: (session, email, validationCode) async {
      await Future.delayed(Duration(seconds: 1));
      print('Sending validation email to $email with code $validationCode');

      return true;
    },
    sendPasswordResetEmail: (session, userInfo, validationCode) async {
      await Future.delayed(Duration(seconds: 1));
      print(
          'Sending password reset email to ${userInfo.email} with code $validationCode');

      return true;
    },
  ));

  // Start the server.
  await pod.start();
}
