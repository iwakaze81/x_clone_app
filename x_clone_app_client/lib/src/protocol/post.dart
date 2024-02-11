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

abstract class Post extends _i1.SerializableEntity {
  Post._({
    this.id,
    required this.userId,
    this.user,
    required this.content,
    required this.createdAt,
  });

  factory Post({
    int? id,
    required int userId,
    _i2.User? user,
    required String content,
    required DateTime createdAt,
  }) = _PostImpl;

  factory Post.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Post(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      userId:
          serializationManager.deserialize<int>(jsonSerialization['userId']),
      user: serializationManager
          .deserialize<_i2.User?>(jsonSerialization['user']),
      content: serializationManager
          .deserialize<String>(jsonSerialization['content']),
      createdAt: serializationManager
          .deserialize<DateTime>(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int userId;

  _i2.User? user;

  String content;

  DateTime createdAt;

  Post copyWith({
    int? id,
    int? userId,
    _i2.User? user,
    String? content,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      if (user != null) 'user': user?.toJson(),
      'content': content,
      'createdAt': createdAt.toJson(),
    };
  }
}

class _Undefined {}

class _PostImpl extends Post {
  _PostImpl({
    int? id,
    required int userId,
    _i2.User? user,
    required String content,
    required DateTime createdAt,
  }) : super._(
          id: id,
          userId: userId,
          user: user,
          content: content,
          createdAt: createdAt,
        );

  @override
  Post copyWith({
    Object? id = _Undefined,
    int? userId,
    Object? user = _Undefined,
    String? content,
    DateTime? createdAt,
  }) {
    return Post(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      user: user is _i2.User? ? user : this.user?.copyWith(),
      content: content ?? this.content,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
