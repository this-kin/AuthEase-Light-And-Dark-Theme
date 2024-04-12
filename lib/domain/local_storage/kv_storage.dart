import 'dart:convert';
import 'package:qoute_app/constants/key_constants.dart';
import 'package:qoute_app/data/entities/user_model.dart';
import 'package:qoute_app/domain/local_storage/base_kv_storage.dart';
import 'package:qoute_app/presentation/providers/states/auth_state.dart';

class KeyValueStorage {
  /// BaseKeyValueStorage instance variable
  final BaseKeyValueStorage _storage = BaseKeyValueStorage.instance;

  KeyValueStorage() {
    _storage.init();
  }

  // Retrieves string password from encrypted storage
  Future<String?> getAuthPassword() async {
    return await _storage.getEncrypted(KeyConstant.passwordKey) ?? '';
  }

  // Retrieves string token from encrypted storage
  Future<String?> getAuthToken() async {
    return await _storage.getEncrypted(KeyConstant.passwordKey) ?? '';
  }

  /// retrieves string email from encrypted storage
  Future<String?> getAuthEmail() async {
    return await _storage.getEncrypted(KeyConstant.emailKey) ?? '';
  }

  /// Retrieves bool auth state (AUTENTICATED || UNAUTHENTICATED)
  ///  from local storage
  bool getAuthState() {
    return _storage.getCommon(KeyConstant.authStateKey) ?? false;
  }

  /// Retrieves user model  from local storage
  UserData? getAuthUser() {
    final user = _storage.getCommon(KeyConstant.userKey);
    if (user == null) return null;
    return UserData.fromJson(jsonDecode(user));
  }

  /// Saves user password in an encrypted storage
  void setAuthPassword(String password) {
    _storage.setEncrypted(KeyConstant.passwordKey, password);
  }

  /// Saves user email in an encrypted storage
  void setAuthEmail(String email) {
    _storage.setEncrypted(KeyConstant.emailKey, email);
  }

  /// Saves user email in an encrypted storage
  void setAuthToken(String token) {
    _storage.setEncrypted(KeyConstant.authToken, token);
  }

  /// Save auth state local storage
  void setAuthState(AuthState state) {
    var authState = (state is AUTHENTICATED);
    _storage.setCommon<bool>(KeyConstant.authStateKey, authState);
  }

  /// Saves [UserData] in local storage
  void setAuthUser(UserData user) async {
    _storage.setCommon<String>(KeyConstant.userKey, jsonEncode(user));
  }

  /// Clears all local storage memory
  void resetKey() async {
    _storage
      ..clearShared()
      ..clearEncrypted();
  }
}
