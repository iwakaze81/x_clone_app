/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class MessageRoom extends _i1.TableRow {
  MessageRoom._({
    int? id,
    required this.name,
    required this.createdAt,
  }) : super(id);

  factory MessageRoom({
    int? id,
    required String name,
    required DateTime createdAt,
  }) = _MessageRoomImpl;

  factory MessageRoom.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return MessageRoom(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      createdAt: serializationManager
          .deserialize<DateTime>(jsonSerialization['createdAt']),
    );
  }

  static final t = MessageRoomTable();

  static const db = MessageRoomRepository._();

  String name;

  DateTime createdAt;

  @override
  _i1.Table get table => t;

  MessageRoom copyWith({
    int? id,
    String? name,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'name': name,
      'createdAt': createdAt,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
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
      case 'name':
        name = value;
        return;
      case 'createdAt':
        createdAt = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<MessageRoom>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MessageRoomTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<MessageRoom>(
      where: where != null ? where(MessageRoom.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<MessageRoom?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MessageRoomTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<MessageRoom>(
      where: where != null ? where(MessageRoom.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<MessageRoom?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<MessageRoom>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<MessageRoomTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<MessageRoom>(
      where: where(MessageRoom.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    MessageRoom row, {
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
    MessageRoom row, {
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
    MessageRoom row, {
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
    _i1.WhereExpressionBuilder<MessageRoomTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<MessageRoom>(
      where: where != null ? where(MessageRoom.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static MessageRoomInclude include() {
    return MessageRoomInclude._();
  }

  static MessageRoomIncludeList includeList({
    _i1.WhereExpressionBuilder<MessageRoomTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MessageRoomTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MessageRoomTable>? orderByList,
    MessageRoomInclude? include,
  }) {
    return MessageRoomIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(MessageRoom.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(MessageRoom.t),
      include: include,
    );
  }
}

class _Undefined {}

class _MessageRoomImpl extends MessageRoom {
  _MessageRoomImpl({
    int? id,
    required String name,
    required DateTime createdAt,
  }) : super._(
          id: id,
          name: name,
          createdAt: createdAt,
        );

  @override
  MessageRoom copyWith({
    Object? id = _Undefined,
    String? name,
    DateTime? createdAt,
  }) {
    return MessageRoom(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class MessageRoomTable extends _i1.Table {
  MessageRoomTable({super.tableRelation}) : super(tableName: 'message_room') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnDateTime createdAt;

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        createdAt,
      ];
}

@Deprecated('Use MessageRoomTable.t instead.')
MessageRoomTable tMessageRoom = MessageRoomTable();

class MessageRoomInclude extends _i1.IncludeObject {
  MessageRoomInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => MessageRoom.t;
}

class MessageRoomIncludeList extends _i1.IncludeList {
  MessageRoomIncludeList._({
    _i1.WhereExpressionBuilder<MessageRoomTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(MessageRoom.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => MessageRoom.t;
}

class MessageRoomRepository {
  const MessageRoomRepository._();

  Future<List<MessageRoom>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MessageRoomTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MessageRoomTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MessageRoomTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<MessageRoom>(
      where: where?.call(MessageRoom.t),
      orderBy: orderBy?.call(MessageRoom.t),
      orderByList: orderByList?.call(MessageRoom.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<MessageRoom?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MessageRoomTable>? where,
    int? offset,
    _i1.OrderByBuilder<MessageRoomTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MessageRoomTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<MessageRoom>(
      where: where?.call(MessageRoom.t),
      orderBy: orderBy?.call(MessageRoom.t),
      orderByList: orderByList?.call(MessageRoom.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<MessageRoom?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<MessageRoom>(
      id,
      transaction: transaction,
    );
  }

  Future<List<MessageRoom>> insert(
    _i1.Session session,
    List<MessageRoom> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<MessageRoom>(
      rows,
      transaction: transaction,
    );
  }

  Future<MessageRoom> insertRow(
    _i1.Session session,
    MessageRoom row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<MessageRoom>(
      row,
      transaction: transaction,
    );
  }

  Future<List<MessageRoom>> update(
    _i1.Session session,
    List<MessageRoom> rows, {
    _i1.ColumnSelections<MessageRoomTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<MessageRoom>(
      rows,
      columns: columns?.call(MessageRoom.t),
      transaction: transaction,
    );
  }

  Future<MessageRoom> updateRow(
    _i1.Session session,
    MessageRoom row, {
    _i1.ColumnSelections<MessageRoomTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<MessageRoom>(
      row,
      columns: columns?.call(MessageRoom.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<MessageRoom> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<MessageRoom>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    MessageRoom row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<MessageRoom>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<MessageRoomTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<MessageRoom>(
      where: where(MessageRoom.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MessageRoomTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<MessageRoom>(
      where: where?.call(MessageRoom.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
