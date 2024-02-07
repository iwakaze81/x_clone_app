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
import 'post.dart' as _i4;
import 'package:x_clone_app_client/src/protocol/post.dart' as _i5;
import 'package:serverpod_auth_client/module.dart' as _i6;
export 'error.dart';
export 'example.dart';
export 'post.dart';
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
    if (t == _i4.Post) {
      return _i4.Post.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i2.UnauthenticatedException?>()) {
      return (data != null
          ? _i2.UnauthenticatedException.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i3.Example?>()) {
      return (data != null ? _i3.Example.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.Post?>()) {
      return (data != null ? _i4.Post.fromJson(data, this) : null) as T;
    }
    if (t == List<_i5.Post>) {
      return (data as List).map((e) => deserialize<_i5.Post>(e)).toList()
          as dynamic;
    }
    try {
      return _i6.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    String? className;
    className = _i6.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    if (data is _i2.UnauthenticatedException) {
      return 'UnauthenticatedException';
    }
    if (data is _i3.Example) {
      return 'Example';
    }
    if (data is _i4.Post) {
      return 'Post';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'].startsWith('serverpod_auth.')) {
      data['className'] = data['className'].substring(15);
      return _i6.Protocol().deserializeByClassName(data);
    }
    if (data['className'] == 'UnauthenticatedException') {
      return deserialize<_i2.UnauthenticatedException>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i3.Example>(data['data']);
    }
    if (data['className'] == 'Post') {
      return deserialize<_i4.Post>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
