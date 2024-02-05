import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:x_clone_app_flutter/feature/root/presentation/widget/app_bottom_navigation_bar.dart';
import 'package:x_clone_app_flutter/router/app_router.dart';

@RoutePage()
class RootPage extends ConsumerWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        SearchRoute(),
        CommunityRoute(),
        NotificationRoute(),
        MessageRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return AppBottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: (index) => tabsRouter.setActiveIndex(index),
        );
      },
    );
  }
}
