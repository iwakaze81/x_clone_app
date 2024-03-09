/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'protocol.dart' as _i2;
import 'package:serverpod_auth_server/module.dart' as _i3;
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class MessageRoomUser extends _i1.TableRow {
  MessageRoomUser._({
    int? id,
    required this.messageRoomId,
    this.messageRoom,
    required this.userInfoId,
    this.userInfo,
    required this.createdAt,
  }) : super(id);

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

  static final t = MessageRoomUserTable();

  static const db = MessageRoomUserRepository._();

  int messageRoomId;

  _i2.MessageRoom? messageRoom;

  int userInfoId;

  _i3.UserInfo? userInfo;

  DateTime createdAt;

  @override
  _i1.Table get table => t;

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

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'messageRoomId': messageRoomId,
      'userInfoId': userInfoId,
      'createdAt': createdAt,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'messageRoomId': messageRoomId,
      if (messageRoom != null) 'messageRoom': messageRoom?.allToJson(),
      'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.allToJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'messageRoomId':
        messageRoomId = value;
        return;
      case 'userInfoId':
        userInfoId = value;
        return;
      case 'createdAt':
        createdAt = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<MessageRoomUser>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MessageRoomUserTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    MessageRoomUserInclude? include,
  }) async {
    return session.db.find<MessageRoomUser>(
      where: where != null ? where(MessageRoomUser.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<MessageRoomUser?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MessageRoomUserTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    MessageRoomUserInclude? include,
  }) async {
    return session.db.findSingleRow<MessageRoomUser>(
      where: where != null ? where(MessageRoomUser.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<MessageRoomUser?> findById(
    _i1.Session session,
    int id, {
    MessageRoomUserInclude? include,
  }) async {
    return session.db.findById<MessageRoomUser>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<MessageRoomUserTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<MessageRoomUser>(
      where: where(MessageRoomUser.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    MessageRoomUser row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.update instead.')
  static Future<bool> update(
    _i1.Session session,
    MessageRoomUser row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  @Deprecated(
      'Will be removed in 2.0.0. Use: db.insert instead. Important note: In db.insert, the object you pass in is no longer modified, instead a new copy with the added row is returned which contains the inserted id.')
  static Future<void> insert(
    _i1.Session session,
    MessageRoomUser row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.count instead.')
  static Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MessageRoomUserTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<MessageRoomUser>(
      where: where != null ? where(MessageRoomUser.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static MessageRoomUserInclude include({
    _i2.MessageRoomInclude? messageRoom,
    _i3.UserInfoInclude? userInfo,
  }) {
    return MessageRoomUserInclude._(
      messageRoom: messageRoom,
      userInfo: userInfo,
    );
  }

  static MessageRoomUserIncludeList includeList({
    _i1.WhereExpressionBuilder<MessageRoomUserTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MessageRoomUserTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MessageRoomUserTable>? orderByList,
    MessageRoomUserInclude? include,
  }) {
    return MessageRoomUserIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(MessageRoomUser.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(MessageRoomUser.t),
      include: include,
    );
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

class MessageRoomUserTable extends _i1.Table {
  MessageRoomUserTable({super.tableRelation})
      : super(tableName: 'message_room_user') {
    messageRoomId = _i1.ColumnInt(
      'messageRoomId',
      this,
    );
    userInfoId = _i1.ColumnInt(
      'userInfoId',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
  }

  late final _i1.ColumnInt messageRoomId;

  _i2.MessageRoomTable? _messageRoom;

  late final _i1.ColumnInt userInfoId;

  _i3.UserInfoTable? _userInfo;

  late final _i1.ColumnDateTime createdAt;

  _i2.MessageRoomTable get messageRoom {
    if (_messageRoom != null) return _messageRoom!;
    _messageRoom = _i1.createRelationTable(
      relationFieldName: 'messageRoom',
      field: MessageRoomUser.t.messageRoomId,
      foreignField: _i2.MessageRoom.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.MessageRoomTable(tableRelation: foreignTableRelation),
    );
    return _messageRoom!;
  }

  _i3.UserInfoTable get userInfo {
    if (_userInfo != null) return _userInfo!;
    _userInfo = _i1.createRelationTable(
      relationFieldName: 'userInfo',
      field: MessageRoomUser.t.userInfoId,
      foreignField: _i3.UserInfo.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.UserInfoTable(tableRelation: foreignTableRelation),
    );
    return _userInfo!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        messageRoomId,
        userInfoId,
        createdAt,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'messageRoom') {
      return messageRoom;
    }
    if (relationField == 'userInfo') {
      return userInfo;
    }
    return null;
  }
}

@Deprecated('Use MessageRoomUserTable.t instead.')
MessageRoomUserTable tMessageRoomUser = MessageRoomUserTable();

class MessageRoomUserInclude extends _i1.IncludeObject {
  MessageRoomUserInclude._({
    _i2.MessageRoomInclude? messageRoom,
    _i3.UserInfoInclude? userInfo,
  }) {
    _messageRoom = messageRoom;
    _userInfo = userInfo;
  }

  _i2.MessageRoomInclude? _messageRoom;

  _i3.UserInfoInclude? _userInfo;

  @override
  Map<String, _i1.Include?> get includes => {
        'messageRoom': _messageRoom,
        'userInfo': _userInfo,
      };

  @override
  _i1.Table get table => MessageRoomUser.t;
}

class MessageRoomUserIncludeList extends _i1.IncludeList {
  MessageRoomUserIncludeList._({
    _i1.WhereExpressionBuilder<MessageRoomUserTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(MessageRoomUser.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => MessageRoomUser.t;
}

class MessageRoomUserRepository {
  const MessageRoomUserRepository._();

  final attachRow = const MessageRoomUserAttachRowRepository._();

  Future<List<MessageRoomUser>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MessageRoomUserTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MessageRoomUserTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MessageRoomUserTable>? orderByList,
    _i1.Transaction? transaction,
    MessageRoomUserInclude? include,
  }) async {
    return session.dbNext.find<MessageRoomUser>(
      where: where?.call(MessageRoomUser.t),
      orderBy: orderBy?.call(MessageRoomUser.t),
      orderByList: orderByList?.call(MessageRoomUser.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<MessageRoomUser?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MessageRoomUserTable>? where,
    int? offset,
    _i1.OrderByBuilder<MessageRoomUserTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MessageRoomUserTable>? orderByList,
    _i1.Transaction? transaction,
    MessageRoomUserInclude? include,
  }) async {
    return session.dbNext.findFirstRow<MessageRoomUser>(
      where: where?.call(MessageRoomUser.t),
      orderBy: orderBy?.call(MessageRoomUser.t),
      orderByList: orderByList?.call(MessageRoomUser.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<MessageRoomUser?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    MessageRoomUserInclude? include,
  }) async {
    return session.dbNext.findById<MessageRoomUser>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<MessageRoomUser>> insert(
    _i1.Session session,
    List<MessageRoomUser> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<MessageRoomUser>(
      rows,
      transaction: transaction,
    );
  }

  Future<MessageRoomUser> insertRow(
    _i1.Session session,
    MessageRoomUser row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<MessageRoomUser>(
      row,
      transaction: transaction,
    );
  }

  Future<List<MessageRoomUser>> update(
    _i1.Session session,
    List<MessageRoomUser> rows, {
    _i1.ColumnSelections<MessageRoomUserTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<MessageRoomUser>(
      rows,
      columns: columns?.call(MessageRoomUser.t),
      transaction: transaction,
    );
  }

  Future<MessageRoomUser> updateRow(
    _i1.Session session,
    MessageRoomUser row, {
    _i1.ColumnSelections<MessageRoomUserTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<MessageRoomUser>(
      row,
      columns: columns?.call(MessageRoomUser.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<MessageRoomUser> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<MessageRoomUser>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    MessageRoomUser row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<MessageRoomUser>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<MessageRoomUserTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<MessageRoomUser>(
      where: where(MessageRoomUser.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MessageRoomUserTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<MessageRoomUser>(
      where: where?.call(MessageRoomUser.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class MessageRoomUserAttachRowRepository {
  const MessageRoomUserAttachRowRepository._();

  Future<void> messageRoom(
    _i1.Session session,
    MessageRoomUser messageRoomUser,
    _i2.MessageRoom messageRoom,
  ) async {
    if (messageRoomUser.id == null) {
      throw ArgumentError.notNull('messageRoomUser.id');
    }
    if (messageRoom.id == null) {
      throw ArgumentError.notNull('messageRoom.id');
    }

    var $messageRoomUser =
        messageRoomUser.copyWith(messageRoomId: messageRoom.id);
    await session.dbNext.updateRow<MessageRoomUser>(
      $messageRoomUser,
      columns: [MessageRoomUser.t.messageRoomId],
    );
  }

  Future<void> userInfo(
    _i1.Session session,
    MessageRoomUser messageRoomUser,
    _i3.UserInfo userInfo,
  ) async {
    if (messageRoomUser.id == null) {
      throw ArgumentError.notNull('messageRoomUser.id');
    }
    if (userInfo.id == null) {
      throw ArgumentError.notNull('userInfo.id');
    }

    var $messageRoomUser = messageRoomUser.copyWith(userInfoId: userInfo.id);
    await session.dbNext.updateRow<MessageRoomUser>(
      $messageRoomUser,
      columns: [MessageRoomUser.t.userInfoId],
    );
  }
}
