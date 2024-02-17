import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:x_clone_app_client/x_clone_app_client.dart';
import 'package:x_clone_app_flutter/feature/post/state/posts_notifier.dart';

final postProvider =
    FutureProvider.autoDispose.family<Post, int>((ref, postId) async {
  final posts = await ref.watch(postsNotifierProvider.future);

  return posts.firstWhere((post) => post.id == postId);
});
