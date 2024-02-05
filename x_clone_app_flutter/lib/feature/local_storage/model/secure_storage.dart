import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final secureStorageProvider = Provider.autoDispose<SecureStorage>((ref) {
  return const SecureStorage();
});

enum SecureStorageKey {
  email,
  password;
}

class SecureStorage {
  const SecureStorage();

  FlutterSecureStorage get _storage => const FlutterSecureStorage(
      aOptions: AndroidOptions(encryptedSharedPreferences: true));

  Future<void> write({
    required SecureStorageKey key,
    required String value,
  }) async {
    await _storage.write(key: key.name, value: value);
  }

  Future<String?> read({required SecureStorageKey key}) {
    return _storage.read(key: key.name);
  }

  Future<void> delete({required SecureStorageKey key}) async {
    await _storage.delete(key: key.name);
  }
}
