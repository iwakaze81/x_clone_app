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

abstract class MessageRoomUser extends _i1.SerializableEntity {
  MessageRoomUser._({
    this.id,
    required this.messageRoomId,
    this.messageRoom,
    required this.userInfoId,
    this.userInfo,
    required this.createdAt,
  });

  factory MessageRoomUser({
    int? id,
    required int messageRoomId,
    _i2.MessageRoom? messageRoom,
    required int userInfoId,
    _i3.UserInfo? userInfo,
    required DateTime createdAt,
  }) = _MessageRoomUserImpl;

  factory MessageRoomUser.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return MessageRoomUser(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      messageRoomId: serializationManager
          .deserialize<int>(jsonSerialization['messageRoomId']),
      messageRoom: serializationManager
          .deserialize<_i2.MessageRoom?>(jsonSerialization['messageRoom']),
      userInfoId: serializationManager
          .deserialize<int>(jsonSerialization['userInfoId']),
      userInfo: serializationManager
          .deserialize<_i3.UserInfo?>(jsonSerialization['userInfo']),
      createdAt: serializationManager
          .deserialize<DateTime>(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int messageRoomId;

  _i2.MessageRoom? messageRoom;

  int userInfoId;

  _i3.UserInfo? userInfo;

  DateTime createdAt;

  MessageRoomUser copyWith({
    int? id,
    int? messageRoomId,
    _i2.MessageRoom? messageRoom,
    int? userInfoId,
    _i3.UserInfo? userInfo,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'messageRoomId': messageRoomId,
      if (messageRoom != null) 'messageRoom': messageRoom?.toJson(),
      'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }
}

class _Undefined {}

class _MessageRoomUserImpl extends MessageRoomUser {
  _MessageRoomUserImpl({
    int? id,
    required int messageRoomId,
    _i2.MessageRoom? messageRoom,
    required int userInfoId,
    _i3.UserInfo? userInfo,
    required DateTime createdAt,
  }) : super._(
          id: id,
          messageRoomId: messageRoomId,
          messageRoom: messageRoom,
          userInfoId: userInfoId,
          userInfo: userInfo,
          createdAt: createdAt,
        );

  @override
  MessageRoomUser copyWith({
    Object? id = _Undefined,
    int? messageRoomId,
    Object? messageRoom = _Undefined,
    int? userInfoId,
    Object? userInfo = _Undefined,
    DateTime? createdAt,
  }) {
    return MessageRoomUser(
      id: id is int? ? id : this.id,
      messageRoomId: messageRoomId ?? this.messageRoomId,
      messageRoom: messageRoom is _i2.MessageRoom?
          ? messageRoom
          : this.messageRoom?.copyWith(),
      userInfoId: userInfoId ?? this.userInfoId,
      userInfo:
          userInfo is _i3.UserInfo? ? userInfo : this.userInfo?.copyWith(),
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
