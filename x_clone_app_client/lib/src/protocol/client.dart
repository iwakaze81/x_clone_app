/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:x_clone_app_client/src/protocol/message.dart' as _i3;
import 'package:x_clone_app_client/src/protocol/message_room.dart' as _i4;
import 'package:x_clone_app_client/src/protocol/post.dart' as _i5;
import 'package:serverpod_auth_client/module.dart' as _i6;
import 'package:serverpod_chat_client/module.dart' as _i7;
import 'protocol.dart' as _i8;

/// {@category Endpoint}
class EndpointExample extends _i1.EndpointRef {
  EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );
}

/// {@category Endpoint}
class EndpointFavoritePost extends _i1.EndpointRef {
  EndpointFavoritePost(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'favoritePost';

  _i2.Future<int> getFavoriteCount(int postId) =>
      caller.callServerEndpoint<int>(
        'favoritePost',
        'getFavoriteCount',
        {'postId': postId},
      );

  _i2.Future<bool> isFavorite(int postId) => caller.callServerEndpoint<bool>(
        'favoritePost',
        'isFavorite',
        {'postId': postId},
      );

  _i2.Future<bool> toggleFavorite(int postId) =>
      caller.callServerEndpoint<bool>(
        'favoritePost',
        'toggleFavorite',
        {'postId': postId},
      );
}

/// {@category Endpoint}
class EndpointMessage extends _i1.EndpointRef {
  EndpointMessage(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'message';

  _i2.Future<List<_i3.Message>> messages(int messageRoomId) =>
      caller.callServerEndpoint<List<_i3.Message>>(
        'message',
        'messages',
        {'messageRoomId': messageRoomId},
      );

  _i2.Future<void> post(
    int messageRoomId,
    String content,
  ) =>
      caller.callServerEndpoint<void>(
        'message',
        'post',
        {
          'messageRoomId': messageRoomId,
          'content': content,
        },
      );
}

/// {@category Endpoint}
class EndpointMessageRoom extends _i1.EndpointRef {
  EndpointMessageRoom(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'messageRoom';

  _i2.Future<List<_i4.MessageRoom>> rooms() =>
      caller.callServerEndpoint<List<_i4.MessageRoom>>(
        'messageRoom',
        'rooms',
        {},
      );

  _i2.Future<_i4.MessageRoom> createRoom(int participantUserId) =>
      caller.callServerEndpoint<_i4.MessageRoom>(
        'messageRoom',
        'createRoom',
        {'participantUserId': participantUserId},
      );
}

/// {@category Endpoint}
class EndpointPost extends _i1.EndpointRef {
  EndpointPost(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'post';

  _i2.Future<List<_i5.Post>> getPosts() =>
      caller.callServerEndpoint<List<_i5.Post>>(
        'post',
        'getPosts',
        {},
      );

  _i2.Future<_i5.Post> createPost({required String content}) =>
      caller.callServerEndpoint<_i5.Post>(
        'post',
        'createPost',
        {'content': content},
      );
}

class _Modules {
  _Modules(Client client) {
    auth = _i6.Caller(client);
    chat = _i7.Caller(client);
  }

  late final _i6.Caller auth;

  late final _i7.Caller chat;
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
  }) : super(
          host,
          _i8.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
        ) {
    example = EndpointExample(this);
    favoritePost = EndpointFavoritePost(this);
    message = EndpointMessage(this);
    messageRoom = EndpointMessageRoom(this);
    post = EndpointPost(this);
    modules = _Modules(this);
  }

  late final EndpointExample example;

  late final EndpointFavoritePost favoritePost;

  late final EndpointMessage message;

  late final EndpointMessageRoom messageRoom;

  late final EndpointPost post;

  late final _Modules modules;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'example': example,
        'favoritePost': favoritePost,
        'message': message,
        'messageRoom': messageRoom,
        'post': post,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {
        'auth': modules.auth,
        'chat': modules.chat,
      };
}
