import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:x_clone_app_flutter/feature/home/presentation/widget/app_drawer.dart';
import 'package:x_clone_app_flutter/feature/post/presentation/widget/post_list.dart';
import 'package:x_clone_app_flutter/feature/post/state/posts_notifier.dart';
import 'package:x_clone_app_flutter/router/app_router.dart';
import 'package:x_clone_app_flutter/utility_widgets/app_logo.dart';

@RoutePage()
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final posts = ref.watch(postsNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        leading: Center(
          child: GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: const CircleAvatar(
              radius: 18,
            ),
          ),
        ),
        centerTitle: true,
        title: const AppLogo(),
      ),
      body: posts.when(
        data: (posts) => PostList(posts: posts),
        error: (e, s) => Text('error $e'),
        loading: () => const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.router.push(const PostRoute());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
