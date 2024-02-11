import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:x_clone_app_flutter/feature/post/state/posts_notifier.dart';

@RoutePage()
class PostPage extends HookConsumerWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final contentController = useTextEditingController();

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 96,
        leading: TextButton(
          child: const Text('キャンセル'),
          onPressed: () {
            context.router.pop();
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: ValueListenableBuilder(
              valueListenable: contentController,
              builder: (context, value, __) {
                return FilledButton(
                  onPressed: value.text.isEmpty
                      ? null
                      : () {
                          ref
                              .read(postsNotifierProvider.notifier)
                              .createPost(value.text);

                          context.router.pop();
                        },
                  child: const Text('ポストする'),
                );
              },
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                radius: 18,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: TextFormField(
                  autofocus: true,
                  controller: contentController,
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  decoration: const InputDecoration(
                    hintText: 'いまどうしてる？',
                    border: InputBorder.none,
                    isDense: true,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
