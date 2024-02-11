import 'package:serverpod/serverpod.dart';
import 'package:x_clone_app_server/src/generated/protocol.dart';

class PostEndpoint extends Endpoint {
  Future<List<Post>> getPosts(Session session) async {
    if (!await session.isUserSignedIn) {
      throw UnauthenticatedException(message: 'User not signed in.');
    }

    return await Post.db.find(session);
  }

  Future<Post> createPost(Session session, {required String content}) async {
    final userId = await session.auth.authenticatedUserId;

    if (userId == null) {
      throw UnauthenticatedException(message: 'User not signed in.');
    }

    final post = Post(
      content: content,
      createdAt: DateTime.now(),
      userId: userId,
    );

    final result = await Post.db.insertRow(
      session,
      post,
    );

    return result;
  }
}
