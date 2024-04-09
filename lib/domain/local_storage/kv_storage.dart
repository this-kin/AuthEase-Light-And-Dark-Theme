import 'package:qoute_app/constants/key_constants.dart';
import 'package:qoute_app/domain/local_storage/base_kv_storage.dart';

class KeyValueStorage {
  /// base key value storage instance variable
  final BaseKeyValueStorage _storage = BaseKeyValueStorage.instance;

  // retrieves string password from encrypted storage
  Future<String?> getAuthPassword() async {
    return await _storage.getEncrypted(KeyConstant.passwordKey) ?? '';
  }

  /// retrieves string email from encrypted storage
  Future<String?> getAuthEmail() async {
    return await _storage.getEncrypted(KeyConstant.emailKey) ?? '';
  }

  /// retrieves bool auth state (AUTENTICATED || UNAUTHENTICATED) from local storage
  bool getAuthState() {
    return _storage.getCommon(KeyConstant.authStateKey) ?? false;
  }

  /// retrieves user model  from local storage
  // UserData? getAuthUser() {
  //   final user = _storage.getCommon(KeyConstant.userKey);
  //   if (user == null) return null;
  //   return UserData.fromJson(jsonDecode(user));
  // }

  /// save user password in an encrypted storage
  void setAuthPassword(String password) {
    _storage.setEncrypted(KeyConstant.passwordKey, password);
  }

  /// save user email in an encrypted storage
  void setAuthEmail(String email) {
    _storage.setEncrypted(KeyConstant.emailKey, email);
  }

  /// save auth state local storage
  // void setAuthState(AuthState state) {
  //   var authState = (state is AUTHENTICATED);
  //   debugPrint('key value state $state');
  //   _storage.setCommon<bool>(KeyConstant.authStateKey, authState);
  // }

  /// save user in local storage
  // void setAuthUser(UserData user) async {
  //   _storage.setCommon<String>(KeyConstant.userKey, jsonEncode(user));
  // }

  /// clear all local storage memory
  void resetKey() async {
    _storage
      ..clearShared()
      ..clearEncrypted();
  }
}
