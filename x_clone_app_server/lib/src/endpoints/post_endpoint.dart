import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/module.dart';
import 'package:x_clone_app_server/src/generated/protocol.dart';

class PostEndpoint extends Endpoint {
  Future<List<Post>> getPosts(Session session) async {
    if (!await session.isUserSignedIn) {
      throw UnauthenticatedException(message: 'User not signed in.');
    }

    return await Post.db.find(
      session,
      orderBy: (post) => post.createdAt,
      orderDescending: true,
      include: Post.include(userInfo: UserInfo.include()),
    );
  }

  Future<Post> createPost(Session session, {required String content}) async {
    final userInfoId = await session.auth.authenticatedUserId;
    if (userInfoId == null) {
      throw UnauthenticatedException(message: 'User not signed in.');
    }

    final user = await UserInfo.db.findById(session, userInfoId);
    if (user == null) {
      throw UnauthenticatedException(message: 'User not signed in.');
    }

    final post = Post(
      content: content,
      createdAt: DateTime.now(),
      userInfoId: userInfoId,
    );

    final result = await Post.db.insertRow(
      session,
      post,
    );

    return result.copyWith(userInfo: user);
  }
}
