import 'package:serverpod/serverpod.dart';
import 'package:x_clone_app_server/src/generated/protocol.dart';

class FavoritePostEndpoint extends Endpoint {
  Future<int> getFavoriteCount(Session session, int postId) async {
    final userInfoId = await session.auth.authenticatedUserId;

    if (userInfoId == null) {
      throw UnauthenticatedException(message: 'User not signed in.');
    }

    return await FavoritePost.db.count(
      session,
      where: (table) => table.postId.equals(postId),
    );
  }

  Future<bool> isFavorite(Session session, int postId) async {
    final userInfoId = await session.auth.authenticatedUserId;

    if (userInfoId == null) {
      throw UnauthenticatedException(message: 'User not signed in.');
    }

    final favoritePost = await FavoritePost.db.findFirstRow(
      session,
      where: (table) =>
          table.postId.equals(postId) | table.userId.equals(userInfoId),
    );

    return favoritePost != null;
  }

  Future<bool> toggleFavorite(Session session, int postId) async {
    final userInfoId = await session.auth.authenticatedUserId;

    if (userInfoId == null) {
      throw UnauthenticatedException(message: 'User not signed in.');
    }

    final favoritePost = await FavoritePost.db.findFirstRow(
      session,
      where: (table) =>
          table.postId.equals(postId) & table.userId.equals(userInfoId),
    );

    if (favoritePost != null) {
      await FavoritePost.db.deleteRow(session, favoritePost);
      return false;
    } else {
      await FavoritePost.db
          .insertRow(session, FavoritePost(postId: postId, userId: userInfoId));
      return true;
    }
  }
}
