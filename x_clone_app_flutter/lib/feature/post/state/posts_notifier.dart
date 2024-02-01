import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:x_clone_app_client/x_clone_app_client.dart';
import 'package:x_clone_app_flutter/serverpod/client.dart';

final postsNotifierProvider =
    AsyncNotifierProvider.autoDispose<PostsNotifier, List<Post>>(
        PostsNotifier.new);

class PostsNotifier extends AutoDisposeAsyncNotifier<List<Post>> {
  @override
  Future<List<Post>> build() {
    final client = ref.watch(clientProvider);

    return client.post.getPosts();
  }

  Future<void> createPost(String content) async {
    final client = ref.watch(clientProvider);

    final post = Post(body: content, createdAt: DateTime.now());

    await client.post.createPost(post);

    await update((state) {
      return state..add(post);
    });
  }
}
