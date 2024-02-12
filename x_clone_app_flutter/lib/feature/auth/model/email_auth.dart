import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:serverpod_auth_email_flutter/serverpod_auth_email_flutter.dart';
import 'package:x_clone_app_flutter/feature/auth/state/session.dart';
import 'package:x_clone_app_flutter/feature/local_storage/model/secure_storage.dart';
import 'package:x_clone_app_flutter/feature/util/singletones.dart';
import 'package:x_clone_app_flutter/serverpod/api_client.dart';

final emailAuthProvider = Provider.autoDispose<EmailAuth>((ref) {
  final sessionNotifier = ref.watch(sessionNotifierProvider.notifier);
  final secureStorage = ref.watch(secureStorageProvider);

  return EmailAuth(sessionNotifier, secureStorage);
});

class EmailAuth {
  final SessionNotifier _sessionNotifier;
  final SecureStorage _secureStorage;

  const EmailAuth(this._sessionNotifier, this._secureStorage);

  EmailAuthController get _authController =>
      EmailAuthController(singleton<ApiClient>().client.modules.auth);

  Future<bool> signIn({
    required String email,
    required String password,
  }) async {
    final user = await _authController.signIn(email, password);

    _sessionNotifier.updateSession();

    if (user != null) {
      _secureStorage.write(key: SecureStorageKey.email, value: email);
      _secureStorage.write(key: SecureStorageKey.password, value: password);
    }

    return user != null;
  }

  Future<bool> signUp({
    required String userName,
    required String email,
    required String password,
  }) async {
    final result =
        await _authController.createAccountRequest(userName, email, password);

    if (result) {
      _secureStorage.write(key: SecureStorageKey.email, value: email);
      _secureStorage.write(key: SecureStorageKey.password, value: password);
    }

    _sessionNotifier.updateSession();

    return result;
  }

  Future<bool> verifyCode({required String code}) async {
    final email = await _secureStorage.read(key: SecureStorageKey.email);

    if (email == null) {
      return false;
    }

    final user = await _authController.validateAccount(email, code);

    if (user == null) {
      return false;
    }
    final password = await _secureStorage.read(key: SecureStorageKey.password);

    if (password == null) {
      return false;
    }

    final signInUser = await _authController.signIn(email, password);

    _sessionNotifier.updateSession();

    return signInUser != null;
  }
}
