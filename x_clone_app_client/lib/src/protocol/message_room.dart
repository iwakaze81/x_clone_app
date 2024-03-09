/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class MessageRoom extends _i1.SerializableEntity {
  MessageRoom._({
    this.id,
    required this.name,
    required this.createdAt,
  });

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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  DateTime createdAt;

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
