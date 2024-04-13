/// A utility class for saving keys for local storage
/// This class has no constructor and all methods are `static`.
class KeyConstant {
  /// The main key used for saving password in local storage of the app.
  ///
  static const String passwordKey = "password_key";

  /// The main key used for saving email in local storage of the app.
  ///
  static const String emailKey = "email_key";

  /// The main key used for saving auth state in local storage of the app.
  ///
  static const String authStateKey = "auth_state_key";

  /// The main key used for saving user state in local storage of the app.
  ///
  static const String userKey = "user_state_key";

  /// The main key used for token in local storage of the app.
  ///
  static const String authToken = "auth_token_key";
}
