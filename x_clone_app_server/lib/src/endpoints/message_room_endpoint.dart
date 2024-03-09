import 'package:serverpod/serverpod.dart';
import 'package:x_clone_app_server/src/generated/protocol.dart';

class MessageRoomEndpoint extends Endpoint {
  Future<List<MessageRoom>> rooms(Session session) async {
    final userId = await session.auth.authenticatedUserId;
    if (userId == null) {
      throw UnauthenticatedException(message: 'User not signed in.');
    }

    final userMessageRoom = await MessageRoomUser.db.find(session,
        where: (table) => table.userInfoId.equals(userId),
        include: MessageRoomUser.include(messageRoom: MessageRoom.include()));

    return userMessageRoom
        .map((e) => e.messageRoom)
        .whereType<MessageRoom>()
        .toList();
  }

  Future<MessageRoom> createRoom(Session session, int participantUserId) async {
    final userId = await session.auth.authenticatedUserId;
    if (userId == null) {
      throw UnauthenticatedException(message: 'User not signed in.');
    }

    final messageRoom = MessageRoom(
      name: Uuid().v4(),
      createdAt: DateTime.now(),
    );

    final result = await session.dbNext.transaction((transaction) async {
      final room = await MessageRoom.db.insertRow(
        session,
        messageRoom,
        transaction: transaction,
      );

      if (room.id == null) {
        throw Exception('Failed to create message room');
      }

      final now = DateTime.now();
      final messageRoomUsers = [userId, participantUserId]
          .map((e) => MessageRoomUser(
                messageRoomId: room.id!,
                createdAt: now,
                userInfoId: e,
              ))
          .toList();

      await MessageRoomUser.db.insert(
        session,
        messageRoomUsers,
        transaction: transaction,
      );

      return room;
    });

    return result;
  }
}
