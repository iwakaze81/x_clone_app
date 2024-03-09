/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'package:serverpod_auth_client/module.dart' as _i2;

abstract class Message extends _i1.SerializableEntity {
  Message._({
    this.id,
    required this.content,
    required this.createdAt,
    required this.roomId,
    required this.userInfoId,
    this.userInfo,
  });

  factory Message({
    int? id,
    required String content,
    required DateTime createdAt,
    required int roomId,
    required int userInfoId,
    _i2.UserInfo? userInfo,
  }) = _MessageImpl;

  factory Message.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Message(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      content: serializationManager
          .deserialize<String>(jsonSerialization['content']),
      createdAt: serializationManager
          .deserialize<DateTime>(jsonSerialization['createdAt']),
      roomId:
          serializationManager.deserialize<int>(jsonSerialization['roomId']),
      userInfoId: serializationManager
          .deserialize<int>(jsonSerialization['userInfoId']),
      userInfo: serializationManager
          .deserialize<_i2.UserInfo?>(jsonSerialization['userInfo']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String content;

  DateTime createdAt;

  int roomId;

  int userInfoId;

  _i2.UserInfo? userInfo;

  Message copyWith({
    int? id,
    String? content,
    DateTime? createdAt,
    int? roomId,
    int? userInfoId,
    _i2.UserInfo? userInfo,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'content': content,
      'createdAt': createdAt.toJson(),
      'roomId': roomId,
      'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJson(),
    };
  }
}

class _Undefined {}

class _MessageImpl extends Message {
  _MessageImpl({
    int? id,
    required String content,
    required DateTime createdAt,
    required int roomId,
    required int userInfoId,
    _i2.UserInfo? userInfo,
  }) : super._(
          id: id,
          content: content,
          createdAt: createdAt,
          roomId: roomId,
          userInfoId: userInfoId,
          userInfo: userInfo,
        );

  @override
  Message copyWith({
    Object? id = _Undefined,
    String? content,
    DateTime? createdAt,
    int? roomId,
    int? userInfoId,
    Object? userInfo = _Undefined,
  }) {
    return Message(
      id: id is int? ? id : this.id,
      content: content ?? this.content,
      createdAt: createdAt ?? this.createdAt,
      roomId: roomId ?? this.roomId,
      userInfoId: userInfoId ?? this.userInfoId,
      userInfo:
          userInfo is _i2.UserInfo? ? userInfo : this.userInfo?.copyWith(),
    );
  }
}
