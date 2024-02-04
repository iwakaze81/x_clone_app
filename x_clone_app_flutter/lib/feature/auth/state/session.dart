import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';
import 'package:x_clone_app_flutter/feature/auth/model/entity/session.dart';
import 'package:x_clone_app_flutter/feature/util/singletones.dart';
import 'package:x_clone_app_flutter/serverpod/api_client.dart';

final sessionNotifierProvider =
    NotifierProvider.autoDispose<SessionNotifier, Session>(SessionNotifier.new);

class SessionNotifier extends AutoDisposeNotifier<Session> {
  SessionManager get _sessionManager => singleton<ApiClient>().sessionManager;

  @override
  Session build() {
    return Session(user: _sessionManager.signedInUser);
  }

  void updateSession() {
    state = Session(user: _sessionManager.signedInUser);
  }
}
