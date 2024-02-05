import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:x_clone_app_flutter/feature/auth/presentation/sign_in_page.dart';
import 'package:x_clone_app_flutter/feature/auth/presentation/sign_up_page.dart';
import 'package:x_clone_app_flutter/feature/auth/presentation/verify_code_page.dart';
import 'package:x_clone_app_flutter/feature/community/presentation/community_page.dart';
import 'package:x_clone_app_flutter/feature/home/presentation/home_page.dart';
import 'package:x_clone_app_flutter/feature/auth/presentation/auth_page.dart';
import 'package:x_clone_app_flutter/feature/message/presentation/message_page.dart';
import 'package:x_clone_app_flutter/feature/notification/presentation/notification_page.dart';
import 'package:x_clone_app_flutter/feature/root/presentation/root_page.dart';
import 'package:x_clone_app_flutter/feature/search/presentation/search_page.dart';
import 'package:x_clone_app_flutter/router/auth_guard.dart';

part 'app_router.gr.dart';

final appRouterProvider = Provider.autoDispose<AppRouter>((ref) {
  return AppRouter();
});

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  AppRouter();

  @override
  List<AutoRoute> get routes {
    return [
      AdaptiveRoute(
        page: RootRoute.page,
        initial: true,
        guards: const [AuthGuard()],
        children: [
          AdaptiveRoute(page: HomeRoute.page),
          AdaptiveRoute(page: SearchRoute.page),
          AdaptiveRoute(page: CommunityRoute.page),
          AdaptiveRoute(page: NotificationRoute.page),
          AdaptiveRoute(page: MessageRoute.page),
        ],
      ),
      AdaptiveRoute(page: AuthRoute.page),
      AdaptiveRoute(page: SignInRoute.page),
      AdaptiveRoute(page: SignUpRoute.page),
      AdaptiveRoute(page: VerificationCodeRoute.page),
    ];
  }
}
