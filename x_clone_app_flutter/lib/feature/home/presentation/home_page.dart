import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:x_clone_app_flutter/feature/auth/presentation/widget/my_avatar.dart';
import 'package:x_clone_app_flutter/feature/post/presentation/widget/post_tile.dart';
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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            surfaceTintColor: Colors.white.withOpacity(0.6),
            backgroundColor: Colors.white.withOpacity(0.6),
            leading: Center(
              child: GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: const MyAvatar(),
              ),
            ),
            centerTitle: true,
            title: const AppLogo(),
          ),
          posts.when(
            data: (posts) {
              if (posts.isEmpty) {
                return const SliverFillRemaining(
                  child: Center(
                    child: Text('ポストはありません'),
                  ),
                );
              }

              return SliverList.separated(
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  return PostTile(post: posts[index]);
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    height: 1,
                    color: Colors.grey.shade200,
                  );
                },
              );
            },
            error: (e, s) => SliverFillRemaining(
              child: Text('error $e'),
            ),
            loading: () => const SliverFillRemaining(
              child: Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            ),
          ),
        ],
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
