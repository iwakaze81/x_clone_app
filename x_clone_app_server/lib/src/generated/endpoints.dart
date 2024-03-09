/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/example_endpoint.dart' as _i2;
import '../endpoints/favorite_post_endpoint.dart' as _i3;
import '../endpoints/message_endpoint.dart' as _i4;
import '../endpoints/message_room_endpoint.dart' as _i5;
import '../endpoints/post_endpoint.dart' as _i6;
import 'package:serverpod_auth_server/module.dart' as _i7;
import 'package:serverpod_chat_server/module.dart' as _i8;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'example': _i2.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
      'favoritePost': _i3.FavoritePostEndpoint()
        ..initialize(
          server,
          'favoritePost',
          null,
        ),
      'message': _i4.MessageEndpoint()
        ..initialize(
          server,
          'message',
          null,
        ),
      'messageRoom': _i5.MessageRoomEndpoint()
        ..initialize(
          server,
          'messageRoom',
          null,
        ),
      'post': _i6.PostEndpoint()
        ..initialize(
          server,
          'post',
          null,
        ),
    };
    connectors['example'] = _i1.EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i2.ExampleEndpoint).hello(
            session,
            params['name'],
          ),
        )
      },
    );
    connectors['favoritePost'] = _i1.EndpointConnector(
      name: 'favoritePost',
      endpoint: endpoints['favoritePost']!,
      methodConnectors: {
        'getFavoriteCount': _i1.MethodConnector(
          name: 'getFavoriteCount',
          params: {
            'postId': _i1.ParameterDescription(
              name: 'postId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['favoritePost'] as _i3.FavoritePostEndpoint)
                  .getFavoriteCount(
            session,
            params['postId'],
          ),
        ),
        'isFavorite': _i1.MethodConnector(
          name: 'isFavorite',
          params: {
            'postId': _i1.ParameterDescription(
              name: 'postId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['favoritePost'] as _i3.FavoritePostEndpoint)
                  .isFavorite(
            session,
            params['postId'],
          ),
        ),
        'toggleFavorite': _i1.MethodConnector(
          name: 'toggleFavorite',
          params: {
            'postId': _i1.ParameterDescription(
              name: 'postId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['favoritePost'] as _i3.FavoritePostEndpoint)
                  .toggleFavorite(
            session,
            params['postId'],
          ),
        ),
      },
    );
    connectors['message'] = _i1.EndpointConnector(
      name: 'message',
      endpoint: endpoints['message']!,
      methodConnectors: {
        'messages': _i1.MethodConnector(
          name: 'messages',
          params: {
            'messageRoomId': _i1.ParameterDescription(
              name: 'messageRoomId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['message'] as _i4.MessageEndpoint).messages(
            session,
            params['messageRoomId'],
          ),
        ),
        'post': _i1.MethodConnector(
          name: 'post',
          params: {
            'messageRoomId': _i1.ParameterDescription(
              name: 'messageRoomId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'content': _i1.ParameterDescription(
              name: 'content',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['message'] as _i4.MessageEndpoint).post(
            session,
            params['messageRoomId'],
            params['content'],
          ),
        ),
      },
    );
    connectors['messageRoom'] = _i1.EndpointConnector(
      name: 'messageRoom',
      endpoint: endpoints['messageRoom']!,
      methodConnectors: {
        'rooms': _i1.MethodConnector(
          name: 'rooms',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['messageRoom'] as _i5.MessageRoomEndpoint)
                  .rooms(session),
        ),
        'createRoom': _i1.MethodConnector(
          name: 'createRoom',
          params: {
            'participantUserId': _i1.ParameterDescription(
              name: 'participantUserId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['messageRoom'] as _i5.MessageRoomEndpoint).createRoom(
            session,
            params['participantUserId'],
          ),
        ),
      },
    );
    connectors['post'] = _i1.EndpointConnector(
      name: 'post',
      endpoint: endpoints['post']!,
      methodConnectors: {
        'getPosts': _i1.MethodConnector(
          name: 'getPosts',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['post'] as _i6.PostEndpoint).getPosts(session),
        ),
        'createPost': _i1.MethodConnector(
          name: 'createPost',
          params: {
            'content': _i1.ParameterDescription(
              name: 'content',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['post'] as _i6.PostEndpoint).createPost(
            session,
            content: params['content'],
          ),
        ),
      },
    );
    modules['serverpod_auth'] = _i7.Endpoints()..initializeEndpoints(server);
    modules['serverpod_chat'] = _i8.Endpoints()..initializeEndpoints(server);
  }
}
