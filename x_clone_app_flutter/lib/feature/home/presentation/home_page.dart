import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:x_clone_app_flutter/feature/auth/model/email_auth.dart';
import 'package:x_clone_app_flutter/feature/post/state/posts_notifier.dart';

@RoutePage()
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final posts = ref.watch(postsNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Serverpod Example'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              ref.read(emailAuthProvider).logout();
            },
          ),
        ],
      ),
      body: posts.when(
        data: (posts) {
          if (posts.isEmpty) {
            return const Center(
              child: Text('ポストはありません'),
            );
          }

          return ListView.builder(
            itemCount: posts.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {},
                title: Text(posts[index].body),
                subtitle: Text(posts[index].createdAt.toString()),
              );
            },
          );
        },
        error: (e, s) => Text('error $e'),
        loading: () => const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await ref.read(postsNotifierProvider.notifier).createPost('test');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
