/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class UnauthenticatedException extends _i1.SerializableEntity
    implements _i1.SerializableException {
  UnauthenticatedException._({required this.message});

  factory UnauthenticatedException({required String message}) =
      _UnauthenticatedExceptionImpl;

  factory UnauthenticatedException.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return UnauthenticatedException(
        message: serializationManager
            .deserialize<String>(jsonSerialization['message']));
  }

  String message;

  UnauthenticatedException copyWith({String? message});
  @override
  Map<String, dynamic> toJson() {
    return {'message': message};
  }
}

class _UnauthenticatedExceptionImpl extends UnauthenticatedException {
  _UnauthenticatedExceptionImpl({required String message})
      : super._(message: message);

  @override
  UnauthenticatedException copyWith({String? message}) {
    return UnauthenticatedException(message: message ?? this.message);
  }
}
