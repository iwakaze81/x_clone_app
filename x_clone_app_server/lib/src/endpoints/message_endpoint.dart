import 'package:serverpod/serverpod.dart';
import 'package:x_clone_app_server/src/generated/protocol.dart';

class MessageEndpoint extends Endpoint {
  Future<List<Message>> messages(Session session, int messageRoomId) async {
    final userId = await session.auth.authenticatedUserId;
    if (userId == null) {
      throw UnauthenticatedException(message: 'User not signed in.');
    }

    final messageRoom = await MessageRoomUser.db.findFirstRow(
      session,
      where: (table) =>
          table.userInfoId.equals(userId) &
          table.messageRoomId.equals(messageRoomId),
    );

    if (messageRoom == null) {
      throw Exception('User not part of message room');
    }

    final messages = await Message.db.find(
      session,
      orderBy: (table) => table.createdAt,
      orderDescending: false,
      where: (table) => table.roomId.equals(messageRoomId),
    );

    return messages;
  }

  Future<void> post(Session session, int messageRoomId, String content) async {
    final userId = await session.auth.authenticatedUserId;
    if (userId == null) {
      throw UnauthenticatedException(message: 'User not signed in.');
    }

    final messageRoom = await MessageRoomUser.db.findFirstRow(
      session,
      where: (table) =>
          table.userInfoId.equals(userId) &
          table.messageRoomId.equals(messageRoomId),
    );

    if (messageRoom == null) {
      throw Exception('User not part of message room');
    }

    final message = Message(
      content: content,
      createdAt: DateTime.now(),
      roomId: messageRoomId,
      userInfoId: userId,
    );

    session.messages.postMessage(messageRoomId.toString(), message);

    // final result = await Message.db.insertRow(
    //   session,
    //   message,
    // );

    // return result;
  }
}
