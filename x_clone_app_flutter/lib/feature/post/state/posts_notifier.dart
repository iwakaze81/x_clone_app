import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:x_clone_app_client/x_clone_app_client.dart';
import 'package:x_clone_app_flutter/feature/util/singletones.dart';
import 'package:x_clone_app_flutter/serverpod/api_client.dart';

final postsNotifierProvider =
    AsyncNotifierProvider.autoDispose<PostsNotifier, List<Post>>(
        PostsNotifier.new);

class PostsNotifier extends AutoDisposeAsyncNotifier<List<Post>> {
  @override
  Future<List<Post>> build() async {
    final client = singleton<ApiClient>().client;

    return client.post.getPosts();
  }

  Future<void> createPost(String content) async {
    try {
      final client = singleton<ApiClient>().client;

      final post = Post(body: content, createdAt: DateTime.now());

      await client.post.createPost(post);

      await update((state) {
        return state..add(post);
      });
    } on UnauthenticatedException catch (e, s) {
      state = AsyncError(e, s);
    } catch (e, s) {
      state = AsyncError(e, s);
    }
  }
}
