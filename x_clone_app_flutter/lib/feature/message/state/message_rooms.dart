import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:x_clone_app_client/x_clone_app_client.dart';
import 'package:x_clone_app_flutter/feature/util/singletones.dart';
import 'package:x_clone_app_flutter/serverpod/api_client.dart';

final messageRoomsNotifierProvider =
    AsyncNotifierProvider.autoDispose<MessageRoomsNotifier, List<MessageRoom>>(
        MessageRoomsNotifier.new);

class MessageRoomsNotifier extends AutoDisposeAsyncNotifier<List<MessageRoom>> {
  @override
  Future<List<MessageRoom>> build() async {
    final client = singleton<ApiClient>().client;

    return client.messageRoom.rooms();
  }

  Future<void> createRoom(int participantUserId) async {
    if (state is AsyncLoading) return;

    try {
      final client = singleton<ApiClient>().client;

      final room = await client.messageRoom.createRoom(participantUserId);

      await update((state) {
        return [room, ...state];
      });
    } on UnauthenticatedException catch (e, s) {
      state = AsyncError(e, s);
    } catch (e, s) {
      state = AsyncError(e, s);
    }
  }
}
