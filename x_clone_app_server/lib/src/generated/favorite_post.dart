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

abstract class FavoritePost extends _i1.TableRow {
  FavoritePost._({
    int? id,
    required this.postId,
    this.post,
    required this.userId,
    this.user,
  }) : super(id);

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

  static final t = FavoritePostTable();

  static const db = FavoritePostRepository._();

  int postId;

  _i2.Post? post;

  int userId;

  _i3.UserInfo? user;

  @override
  _i1.Table get table => t;

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

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'postId': postId,
      'userId': userId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'postId': postId,
      if (post != null) 'post': post?.allToJson(),
      'userId': userId,
      if (user != null) 'user': user?.allToJson(),
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
      case 'postId':
        postId = value;
        return;
      case 'userId':
        userId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<FavoritePost>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FavoritePostTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    FavoritePostInclude? include,
  }) async {
    return session.db.find<FavoritePost>(
      where: where != null ? where(FavoritePost.t) : null,
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
  static Future<FavoritePost?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FavoritePostTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    FavoritePostInclude? include,
  }) async {
    return session.db.findSingleRow<FavoritePost>(
      where: where != null ? where(FavoritePost.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<FavoritePost?> findById(
    _i1.Session session,
    int id, {
    FavoritePostInclude? include,
  }) async {
    return session.db.findById<FavoritePost>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<FavoritePostTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<FavoritePost>(
      where: where(FavoritePost.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    FavoritePost row, {
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
    FavoritePost row, {
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
    FavoritePost row, {
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
    _i1.WhereExpressionBuilder<FavoritePostTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<FavoritePost>(
      where: where != null ? where(FavoritePost.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static FavoritePostInclude include({
    _i2.PostInclude? post,
    _i3.UserInfoInclude? user,
  }) {
    return FavoritePostInclude._(
      post: post,
      user: user,
    );
  }

  static FavoritePostIncludeList includeList({
    _i1.WhereExpressionBuilder<FavoritePostTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FavoritePostTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FavoritePostTable>? orderByList,
    FavoritePostInclude? include,
  }) {
    return FavoritePostIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(FavoritePost.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(FavoritePost.t),
      include: include,
    );
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

class FavoritePostTable extends _i1.Table {
  FavoritePostTable({super.tableRelation}) : super(tableName: 'favorite_post') {
    postId = _i1.ColumnInt(
      'postId',
      this,
    );
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
  }

  late final _i1.ColumnInt postId;

  _i2.PostTable? _post;

  late final _i1.ColumnInt userId;

  _i3.UserInfoTable? _user;

  _i2.PostTable get post {
    if (_post != null) return _post!;
    _post = _i1.createRelationTable(
      relationFieldName: 'post',
      field: FavoritePost.t.postId,
      foreignField: _i2.Post.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.PostTable(tableRelation: foreignTableRelation),
    );
    return _post!;
  }

  _i3.UserInfoTable get user {
    if (_user != null) return _user!;
    _user = _i1.createRelationTable(
      relationFieldName: 'user',
      field: FavoritePost.t.userId,
      foreignField: _i3.UserInfo.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.UserInfoTable(tableRelation: foreignTableRelation),
    );
    return _user!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        postId,
        userId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'post') {
      return post;
    }
    if (relationField == 'user') {
      return user;
    }
    return null;
  }
}

@Deprecated('Use FavoritePostTable.t instead.')
FavoritePostTable tFavoritePost = FavoritePostTable();

class FavoritePostInclude extends _i1.IncludeObject {
  FavoritePostInclude._({
    _i2.PostInclude? post,
    _i3.UserInfoInclude? user,
  }) {
    _post = post;
    _user = user;
  }

  _i2.PostInclude? _post;

  _i3.UserInfoInclude? _user;

  @override
  Map<String, _i1.Include?> get includes => {
        'post': _post,
        'user': _user,
      };

  @override
  _i1.Table get table => FavoritePost.t;
}

class FavoritePostIncludeList extends _i1.IncludeList {
  FavoritePostIncludeList._({
    _i1.WhereExpressionBuilder<FavoritePostTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(FavoritePost.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => FavoritePost.t;
}

class FavoritePostRepository {
  const FavoritePostRepository._();

  final attachRow = const FavoritePostAttachRowRepository._();

  Future<List<FavoritePost>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FavoritePostTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FavoritePostTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FavoritePostTable>? orderByList,
    _i1.Transaction? transaction,
    FavoritePostInclude? include,
  }) async {
    return session.dbNext.find<FavoritePost>(
      where: where?.call(FavoritePost.t),
      orderBy: orderBy?.call(FavoritePost.t),
      orderByList: orderByList?.call(FavoritePost.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<FavoritePost?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FavoritePostTable>? where,
    int? offset,
    _i1.OrderByBuilder<FavoritePostTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FavoritePostTable>? orderByList,
    _i1.Transaction? transaction,
    FavoritePostInclude? include,
  }) async {
    return session.dbNext.findFirstRow<FavoritePost>(
      where: where?.call(FavoritePost.t),
      orderBy: orderBy?.call(FavoritePost.t),
      orderByList: orderByList?.call(FavoritePost.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<FavoritePost?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    FavoritePostInclude? include,
  }) async {
    return session.dbNext.findById<FavoritePost>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<FavoritePost>> insert(
    _i1.Session session,
    List<FavoritePost> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<FavoritePost>(
      rows,
      transaction: transaction,
    );
  }

  Future<FavoritePost> insertRow(
    _i1.Session session,
    FavoritePost row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<FavoritePost>(
      row,
      transaction: transaction,
    );
  }

  Future<List<FavoritePost>> update(
    _i1.Session session,
    List<FavoritePost> rows, {
    _i1.ColumnSelections<FavoritePostTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<FavoritePost>(
      rows,
      columns: columns?.call(FavoritePost.t),
      transaction: transaction,
    );
  }

  Future<FavoritePost> updateRow(
    _i1.Session session,
    FavoritePost row, {
    _i1.ColumnSelections<FavoritePostTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<FavoritePost>(
      row,
      columns: columns?.call(FavoritePost.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<FavoritePost> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<FavoritePost>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    FavoritePost row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<FavoritePost>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<FavoritePostTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<FavoritePost>(
      where: where(FavoritePost.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FavoritePostTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<FavoritePost>(
      where: where?.call(FavoritePost.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class FavoritePostAttachRowRepository {
  const FavoritePostAttachRowRepository._();

  Future<void> post(
    _i1.Session session,
    FavoritePost favoritePost,
    _i2.Post post,
  ) async {
    if (favoritePost.id == null) {
      throw ArgumentError.notNull('favoritePost.id');
    }
    if (post.id == null) {
      throw ArgumentError.notNull('post.id');
    }

    var $favoritePost = favoritePost.copyWith(postId: post.id);
    await session.dbNext.updateRow<FavoritePost>(
      $favoritePost,
      columns: [FavoritePost.t.postId],
    );
  }

  Future<void> user(
    _i1.Session session,
    FavoritePost favoritePost,
    _i3.UserInfo user,
  ) async {
    if (favoritePost.id == null) {
      throw ArgumentError.notNull('favoritePost.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $favoritePost = favoritePost.copyWith(userId: user.id);
    await session.dbNext.updateRow<FavoritePost>(
      $favoritePost,
      columns: [FavoritePost.t.userId],
    );
  }
}
