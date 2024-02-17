/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'protocol.dart' as _i2;
import 'package:serverpod_auth_client/module.dart' as _i3;

abstract class FavoritePost extends _i1.SerializableEntity {
  FavoritePost._({
    this.id,
    required this.postId,
    this.post,
    required this.userId,
    this.user,
  });

  factory FavoritePost({
    int? id,
    required int postId,
    _i2.Post? post,
    required int userId,
    _i3.UserInfo? user,
  }) = _FavoritePostImpl;

  factory FavoritePost.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return FavoritePost(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      postId:
          serializationManager.deserialize<int>(jsonSerialization['postId']),
      post: serializationManager
          .deserialize<_i2.Post?>(jsonSerialization['post']),
      userId:
          serializationManager.deserialize<int>(jsonSerialization['userId']),
      user: serializationManager
          .deserialize<_i3.UserInfo?>(jsonSerialization['user']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int postId;

  _i2.Post? post;

  int userId;

  _i3.UserInfo? user;

  FavoritePost copyWith({
    int? id,
    int? postId,
    _i2.Post? post,
    int? userId,
    _i3.UserInfo? user,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'postId': postId,
      if (post != null) 'post': post?.toJson(),
      'userId': userId,
      if (user != null) 'user': user?.toJson(),
    };
  }
}

class _Undefined {}

class _FavoritePostImpl extends FavoritePost {
  _FavoritePostImpl({
    int? id,
    required int postId,
    _i2.Post? post,
    required int userId,
    _i3.UserInfo? user,
  }) : super._(
          id: id,
          postId: postId,
          post: post,
          userId: userId,
          user: user,
        );

  @override
  FavoritePost copyWith({
    Object? id = _Undefined,
    int? postId,
    Object? post = _Undefined,
    int? userId,
    Object? user = _Undefined,
  }) {
    return FavoritePost(
      id: id is int? ? id : this.id,
      postId: postId ?? this.postId,
      post: post is _i2.Post? ? post : this.post?.copyWith(),
      userId: userId ?? this.userId,
      user: user is _i3.UserInfo? ? user : this.user?.copyWith(),
    );
  }
}
