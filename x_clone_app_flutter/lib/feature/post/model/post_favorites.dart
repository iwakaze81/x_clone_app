import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:x_clone_app_flutter/feature/util/singletones.dart';
import 'package:x_clone_app_flutter/serverpod/api_client.dart';

final postFavoriteCountProvider =
    FutureProvider.autoDispose.family<int, int>((ref, postId) {
  final client = singleton<ApiClient>().client;

  return client.favoritePost.getFavoriteCount(postId);
});
