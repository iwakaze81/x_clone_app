import 'package:auto_route/auto_route.dart';
import 'package:x_clone_app_flutter/feature/util/singletones.dart';
import 'package:x_clone_app_flutter/router/app_router.dart';
import 'package:x_clone_app_flutter/serverpod/api_client.dart';

class AuthGuard extends AutoRouteGuard {
  const AuthGuard();

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (_isAuthRoute(router.current)) {
      resolver.next(true);
      return;
    }

    final user = singleton<ApiClient>().sessionManager.signedInUser;

    if (user != null) {
      resolver.next(true);
    } else {
      router.push(const AuthRoute());
      resolver.next(false);
    }
  }

  bool _isAuthRoute(RouteData current) {
    return switch (current.name) {
      AuthRoute.name || SignInRoute.name || SignUpRoute.name => true,
      _ => false,
    };
  }
}
