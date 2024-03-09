import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:x_clone_app_flutter/feature/message/state/message_rooms.dart';
import 'package:x_clone_app_flutter/feature/user/presentation/widget/user_page_app_bar.dart';

@RoutePage()
class UserPage extends ConsumerWidget {
  final int userId;

  const UserPage({required this.userId, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const UserPageAppBar(),
          SliverToBoxAdapter(
            child: Container(
              height: 32,
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton.outlined(
                    style: IconButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: const CircleBorder(),
                    ),
                    onPressed: () {
                      ref
                          .read(messageRoomsNotifierProvider.notifier)
                          .createRoom(userId);
                    },
                    icon: const Icon(Icons.email_outlined, size: 18),
                  ),
                  const SizedBox(width: 4),
                  FilledButton(
                    style: FilledButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    child: const Text('フォローする'),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          SliverFillRemaining(
            child: Center(
              child: Text('User Page'),
            ),
          ),
        ],
      ),
    );
  }
}
