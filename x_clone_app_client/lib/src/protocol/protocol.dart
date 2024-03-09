/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'error.dart' as _i2;
import 'example.dart' as _i3;
import 'favorite_post.dart' as _i4;
import 'message.dart' as _i5;
import 'message_room.dart' as _i6;
import 'message_room_user.dart' as _i7;
import 'post.dart' as _i8;
import 'user.dart' as _i9;
import 'package:x_clone_app_client/src/protocol/message.dart' as _i10;
import 'package:x_clone_app_client/src/protocol/message_room.dart' as _i11;
import 'package:x_clone_app_client/src/protocol/post.dart' as _i12;
import 'package:serverpod_auth_client/module.dart' as _i13;
import 'package:serverpod_chat_client/module.dart' as _i14;
export 'error.dart';
export 'example.dart';
export 'favorite_post.dart';
export 'message.dart';
export 'message_room.dart';
export 'message_room_user.dart';
export 'post.dart';
export 'user.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i2.UnauthenticatedException) {
      return _i2.UnauthenticatedException.fromJson(data, this) as T;
    }
    if (t == _i3.Example) {
      return _i3.Example.fromJson(data, this) as T;
    }
    if (t == _i4.FavoritePost) {
      return _i4.FavoritePost.fromJson(data, this) as T;
    }
    if (t == _i5.Message) {
      return _i5.Message.fromJson(data, this) as T;
    }
    if (t == _i6.MessageRoom) {
      return _i6.MessageRoom.fromJson(data, this) as T;
    }
    if (t == _i7.MessageRoomUser) {
      return _i7.MessageRoomUser.fromJson(data, this) as T;
    }
    if (t == _i8.Post) {
      return _i8.Post.fromJson(data, this) as T;
    }
    if (t == _i9.User) {
      return _i9.User.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i2.UnauthenticatedException?>()) {
      return (data != null
          ? _i2.UnauthenticatedException.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i3.Example?>()) {
      return (data != null ? _i3.Example.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.FavoritePost?>()) {
      return (data != null ? _i4.FavoritePost.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i5.Message?>()) {
      return (data != null ? _i5.Message.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i6.MessageRoom?>()) {
      return (data != null ? _i6.MessageRoom.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i7.MessageRoomUser?>()) {
      return (data != null ? _i7.MessageRoomUser.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i8.Post?>()) {
      return (data != null ? _i8.Post.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i9.User?>()) {
      return (data != null ? _i9.User.fromJson(data, this) : null) as T;
    }
    if (t == List<_i10.Message>) {
      return (data as List).map((e) => deserialize<_i10.Message>(e)).toList()
          as dynamic;
    }
    if (t == List<_i11.MessageRoom>) {
      return (data as List)
          .map((e) => deserialize<_i11.MessageRoom>(e))
          .toList() as dynamic;
    }
    if (t == List<_i12.Post>) {
      return (data as List).map((e) => deserialize<_i12.Post>(e)).toList()
          as dynamic;
    }
    try {
      return _i13.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    try {
      return _i14.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    String? className;
    className = _i13.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    className = _i14.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_chat.$className';
    }
    if (data is _i2.UnauthenticatedException) {
      return 'UnauthenticatedException';
    }
    if (data is _i3.Example) {
      return 'Example';
    }
    if (data is _i4.FavoritePost) {
      return 'FavoritePost';
    }
    if (data is _i5.Message) {
      return 'Message';
    }
    if (data is _i6.MessageRoom) {
      return 'MessageRoom';
    }
    if (data is _i7.MessageRoomUser) {
      return 'MessageRoomUser';
    }
    if (data is _i8.Post) {
      return 'Post';
    }
    if (data is _i9.User) {
      return 'User';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'].startsWith('serverpod_auth.')) {
      data['className'] = data['className'].substring(15);
      return _i13.Protocol().deserializeByClassName(data);
    }
    if (data['className'].startsWith('serverpod_chat.')) {
      data['className'] = data['className'].substring(15);
      return _i14.Protocol().deserializeByClassName(data);
    }
    if (data['className'] == 'UnauthenticatedException') {
      return deserialize<_i2.UnauthenticatedException>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i3.Example>(data['data']);
    }
    if (data['className'] == 'FavoritePost') {
      return deserialize<_i4.FavoritePost>(data['data']);
    }
    if (data['className'] == 'Message') {
      return deserialize<_i5.Message>(data['data']);
    }
    if (data['className'] == 'MessageRoom') {
      return deserialize<_i6.MessageRoom>(data['data']);
    }
    if (data['className'] == 'MessageRoomUser') {
      return deserialize<_i7.MessageRoomUser>(data['data']);
    }
    if (data['className'] == 'Post') {
      return deserialize<_i8.Post>(data['data']);
    }
    if (data['className'] == 'User') {
      return deserialize<_i9.User>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
