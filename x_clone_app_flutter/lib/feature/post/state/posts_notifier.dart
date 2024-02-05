import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:x_clone_app_client/x_clone_app_client.dart';

final postsNotifierProvider =
    AsyncNotifierProvider.autoDispose<PostsNotifier, List<Post>>(
        PostsNotifier.new);

class PostsNotifier extends AutoDisposeAsyncNotifier<List<Post>> {
  @override
  Future<List<Post>> build() async {
    // final client = await ref.watch(clientProvider.future);

    // return client.client.post.getPosts();
    return [];
  }

  Future<void> createPost(String content) async {
    // final client = await ref.read(clientProvider.future);

    // final post = Post(body: content, createdAt: DateTime.now());

    // await client.client.post.createPost(post);

    // await update((state) {
    //   return state..add(post);
    // });
  }
}
