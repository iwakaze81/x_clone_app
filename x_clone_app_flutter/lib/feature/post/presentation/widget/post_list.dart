import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:x_clone_app_client/x_clone_app_client.dart';

class PostList extends ConsumerWidget {
  final List<Post> posts;

  const PostList({required this.posts, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
          title: Text(posts[index].content),
          subtitle: Text(posts[index].createdAt.toString()),
        );
      },
    );
  }
}
