import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:x_clone_app_flutter/feature/auth/model/entity/session.dart';
import 'package:x_clone_app_flutter/feature/auth/state/session.dart';
import 'package:x_clone_app_flutter/feature/home/presentation/home_page.dart';
import 'package:x_clone_app_flutter/feature/auth/presentation/auth_page.dart';
import 'package:x_clone_app_flutter/feature/root/presentation/root_page.dart';
import 'package:x_clone_app_flutter/router/auth_guard.dart';

part 'app_router.gr.dart';

final appRouterProvider = Provider.autoDispose<AppRouter>((ref) {
  final session = ref.watch(sessionNotifierProvider);

  return AppRouter(session);
});

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  final Session _session;

  AppRouter(this._session);

  @override
  List<AutoRoute> get routes {
    return [
      AutoRoute(
        page: RootRoute.page,
        initial: true,
        guards: [AuthGuard(_session)],
        children: [
          AutoRoute(
            page: HomeRoute.page,
            initial: true,
          ),
        ],
      ),
      AutoRoute(
        page: AuthRoute.page,
      )
    ];
  }
}
