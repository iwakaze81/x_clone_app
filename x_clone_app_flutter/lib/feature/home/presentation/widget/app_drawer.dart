import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:x_clone_app_flutter/feature/auth/presentation/widget/my_avatar.dart';
import 'package:x_clone_app_flutter/feature/auth/state/session.dart';
import 'package:x_clone_app_flutter/router/app_router.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 12),
            const _UserInfo(),
            const SizedBox(height: 18),
            const Expanded(
              child: _Menu(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 12),
              child: IconButton(
                icon: Icon(Icons.wb_sunny_outlined),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _UserInfo extends ConsumerWidget {
  const _UserInfo();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const MyAvatar(),
              SizedBox(
                height: 24,
                width: 24,
                child: IconButton(
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.all(0),
                    side: const BorderSide(color: Colors.black54, width: 2),
                  ),
                  icon: const Icon(Icons.more_horiz, size: 18),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            'User Name',
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.start,
          ),
          Text(
            '@UserName',
            style: Theme.of(context).textTheme.titleSmall,
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(text: 'XX'),
                    TextSpan(
                      text: ' フォロー',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(text: 'XX'),
                    TextSpan(
                      text: ' フォロワー',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _Menu extends ConsumerWidget {
  const _Menu();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      children: [
        ListTile(
          leading: const Icon(Icons.person_outline),
          title: const Text('プロフィール'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.logout),
          title: const Text('ログアウト'),
          onTap: () async {
            await ref.read(sessionNotifierProvider.notifier).signOut();

            if (context.mounted) {
              context.router.replaceAll([const RootRoute()]);
            }
          },
        ),
      ],
    );
  }
}
