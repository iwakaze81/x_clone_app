import 'package:serverpod/serverpod.dart';
import 'package:x_clone_app_server/src/generated/protocol.dart';

class PostEndpoint extends Endpoint {
  Future<List<Post>> getPosts(Session session) async {
    return await Post.db.find(session);
  }

  Future<void> createPost(Session session, Post post) async {
    await Post.db.insertRow(session, post);
  }
}
