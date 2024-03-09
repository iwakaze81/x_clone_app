import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';
import 'package:serverpod_chat_flutter/serverpod_chat_flutter.dart';
import 'package:x_clone_app_flutter/feature/util/singletones.dart';
import 'package:x_clone_app_flutter/serverpod/api_client.dart';

@RoutePage()
class MessageRoomPage extends HookConsumerWidget {
  final int roomId;

  const MessageRoomPage({required this.roomId, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useState<ChatController?>(null);
    useEffect(() {
      singleton<ApiClient>().client.openStreamingConnection().then((_) {
        final connectStatus =
            singleton<ApiClient>().client.streamingConnectionStatus;

        final chatController = ChatController(
          channel: roomId.toString(),
          module: singleton<ApiClient>().client.modules.chat,
          sessionManager: singleton<ApiClient>().sessionManager,
        );
        controller.value = chatController;
      });

      return;
    }, []);

    return Scaffold(
        appBar: AppBar(
          title: const Text('メッセージルーム'),
        ),
        body: controller.value == null
            ? const Center(
                child: CircularProgressIndicator.adaptive(),
              )
            : Column(
                children: [
                  Expanded(
                    child: ChatView(
                      controller: controller.value!,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      border: Border(
                        top: BorderSide(color: Theme.of(context).dividerColor),
                      ),
                    ),
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.paddingOf(context).bottom),
                    child: ChatInput(controller: controller.value!),
                  ),
                ],
              ));
  }
}
