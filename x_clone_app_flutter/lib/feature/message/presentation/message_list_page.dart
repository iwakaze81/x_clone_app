import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:x_clone_app_flutter/feature/message/state/message_rooms.dart';
import 'package:x_clone_app_flutter/router/app_router.dart';

@RoutePage()
class MessageListPage extends ConsumerWidget {
  const MessageListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final messageRooms = ref.watch(messageRoomsNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('メッセージ'),
      ),
      body: messageRooms.when(
        data: (rooms) {
          if (rooms.isEmpty) {
            return const Center(
              child: Text('メッセージはありません'),
            );
          }

          return ListView.separated(
            itemCount: rooms.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(rooms[index].name),
                onTap: () {
                  context.router
                      .push(MessageRoomRoute(roomId: rooms[index].id!));
                },
              );
            },
            separatorBuilder: (context, index) {
              return const Divider(
                height: 1,
                color: Colors.grey,
              );
            },
          );
        },
        error: (e, s) {
          return Center(
            child: Text('error $e'),
          );
        },
        loading: () {
          return const Center(child: CircularProgressIndicator.adaptive());
        },
      ),
    );
  }
}
