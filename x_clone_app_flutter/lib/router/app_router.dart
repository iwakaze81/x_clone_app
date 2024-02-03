import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:x_clone_app_flutter/feature/home/presentation/home_page.dart';

part 'app_router.gr.dart';

final appRouterProvider = Provider.autoDispose<AppRouter>((ref) {
  return AppRouter();
});

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes {
    return [
      AutoRoute(
        page: HomeRoute.page,
        initial: true,
      )
    ];
  }
}
