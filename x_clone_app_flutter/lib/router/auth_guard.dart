import 'package:auto_route/auto_route.dart';
import 'package:x_clone_app_flutter/feature/auth/model/entity/session.dart';
import 'package:x_clone_app_flutter/router/app_router.dart';

class AuthGuard extends AutoRouteGuard {
  final Session _session;

  const AuthGuard(this._session);

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (_session.user != null) {
      resolver.next(true);
    } else {
      router.push(const AuthRoute());
      resolver.next(false);
    }
  }
}
