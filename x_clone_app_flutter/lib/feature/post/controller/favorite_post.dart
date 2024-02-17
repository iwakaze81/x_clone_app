import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:x_clone_app_flutter/feature/post/model/post_favorites.dart';
import 'package:x_clone_app_flutter/feature/post/model/post_is_favorite.dart';
import 'package:x_clone_app_flutter/feature/util/singletones.dart';
import 'package:x_clone_app_flutter/serverpod/api_client.dart';

final favoritePostProvider = Provider.autoDispose((ref) => FavoritePost(ref));

class FavoritePost {
  final Ref _ref;

  const FavoritePost(this._ref);

  Future<void> toggleFavorite(int postId) async {
    final client = singleton<ApiClient>().client;

    await client.favoritePost.toggleFavorite(postId);

    _ref.invalidate(postFavoriteCountProvider(postId));
    _ref.invalidate(postIsFavoriteProvider(postId));
  }
}
