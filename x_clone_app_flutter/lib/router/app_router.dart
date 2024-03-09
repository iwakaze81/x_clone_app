import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:x_clone_app_flutter/feature/auth/presentation/sign_in_page.dart';
import 'package:x_clone_app_flutter/feature/auth/presentation/sign_up_page.dart';
import 'package:x_clone_app_flutter/feature/auth/presentation/verify_code_page.dart';
import 'package:x_clone_app_flutter/feature/community/presentation/community_page.dart';
import 'package:x_clone_app_flutter/feature/home/presentation/home_page.dart';
import 'package:x_clone_app_flutter/feature/auth/presentation/auth_page.dart';
import 'package:x_clone_app_flutter/feature/message/presentation/message_list_page.dart';
import 'package:x_clone_app_flutter/feature/message/presentation/message_room_page.dart';
import 'package:x_clone_app_flutter/feature/notification/presentation/notification_page.dart';
import 'package:x_clone_app_flutter/feature/post/presentation/post_page.dart';
import 'package:x_clone_app_flutter/feature/root/presentation/root_page.dart';
import 'package:x_clone_app_flutter/feature/search/presentation/search_page.dart';
import 'package:x_clone_app_flutter/feature/user/presentation/user_page.dart';
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
          AutoRoute(
            initial: true,
            page: HomeTabRoute.page,
            children: [
              AutoRoute(
                initial: true,
                page: HomeRoute.page,
              ),
              CustomRoute(
                page: PostRoute.page,
                transitionsBuilder: TransitionsBuilders.slideBottom,
                durationInMilliseconds: 250,
                reverseDurationInMilliseconds: 250,
              ),
            ],
          ),
          AutoRoute(
            page: SearchTabRoute.page,
            children: [
              AutoRoute(initial: true, page: SearchRoute.page),
            ],
          ),
          AutoRoute(
            page: CommunityTabRoute.page,
            children: [
              AutoRoute(initial: true, page: CommunityRoute.page),
            ],
          ),
          AutoRoute(
            page: NotificationTabRoute.page,
            children: [
              AutoRoute(initial: true, page: NotificationRoute.page),
            ],
          ),
          AutoRoute(
            page: MessageTabRoute.page,
            children: [
              AutoRoute(initial: true, page: MessageListRoute.page),
              AutoRoute(page: MessageRoomRoute.page),
            ],
          ),
        ],
      ),
      AdaptiveRoute(page: AuthRoute.page),
      AdaptiveRoute(page: SignInRoute.page),
      AdaptiveRoute(page: SignUpRoute.page),
      AdaptiveRoute(page: VerificationCodeRoute.page),
      AutoRoute(
        page: UserRoute.page,
        guards: const [AuthGuard()],
      ),
    ];
  }
}

@RoutePage()
class HomeTabPage extends AutoRouter {
  const HomeTabPage({super.key});
}

@RoutePage()
class SearchTabPage extends AutoRouter {
  const SearchTabPage({super.key});
}

@RoutePage()
class CommunityTabPage extends AutoRouter {
  const CommunityTabPage({super.key});
}

@RoutePage()
class NotificationTabPage extends AutoRouter {
  const NotificationTabPage({super.key});
}

@RoutePage()
class MessageTabPage extends AutoRouter {
  const MessageTabPage({super.key});
}
