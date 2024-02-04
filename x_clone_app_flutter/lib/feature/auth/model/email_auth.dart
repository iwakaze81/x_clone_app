import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:serverpod_auth_email_flutter/serverpod_auth_email_flutter.dart';
import 'package:x_clone_app_flutter/feature/auth/state/session.dart';
import 'package:x_clone_app_flutter/feature/util/singletones.dart';
import 'package:x_clone_app_flutter/serverpod/api_client.dart';

final emailAuthProvider = Provider.autoDispose<EmailAuth>((ref) {
  final sessionNotifier = ref.watch(sessionNotifierProvider.notifier);

  return EmailAuth(sessionNotifier);
});

class EmailAuth {
  final SessionNotifier _sessionNotifier;

  const EmailAuth(this._sessionNotifier);

  EmailAuthController get _authController =>
      EmailAuthController(singleton<ApiClient>().client.modules.auth);

  Future<void> signIn(String email, String password) async {
    final user = await _authController.signIn(email, password);

    _sessionNotifier.updateSession();
  }

  Future<bool> signUp({
    required String userName,
    required String email,
    required String password,
  }) async {
    final result =
        await _authController.createAccountRequest(userName, email, password);

    _sessionNotifier.updateSession();

    return result;
  }
}
