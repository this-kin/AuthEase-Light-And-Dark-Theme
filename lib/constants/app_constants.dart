const kDuration = Duration(milliseconds: 300);

class Constants {
  // an email regex (Regular Expression) to validate email (ex: amailtodammy@gmail.com)
  static RegExp emailRegex = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z\.]+\.(com|pk)+",
  );

  // a contact regex (Regular Expression) to validate email
  static RegExp phoneRegex =
      RegExp(r'^(?:0|\234)-?(?:80|70|81|90|91)-?\d{2}-?\d{6}$');

  // a name regex (Regular Expression) to validate username (ex: Dammy, Richie)
  static RegExp fullNameRegex = RegExp(r'^[a-zA-Z0-9]+$');

  // a zip code regex (Regular expression) to validate address
  static RegExp addressRegex = RegExp(r'^([a-zA-z0-9/\\' '(),-\s]{2,255})');

  static const invalidEmailError = 'Please enter a valid email address';

  /// The error message for empty email input.
  static const emptyEmailInputError = 'Please enter an email';

  /// The error message for empty phone input.
  static const emptyPhoneError = 'Please enter a phone number';

  /// The error message for empty username input.
  static const emptyNameError = 'Please enter a username';

  /// The error message for empty address input.
  static const emptyAddressError = 'Please enter an Address';

  /// The error message for empty password input.
  static const emptyPasswordInputError = 'Please enter a password';

  /// The error message for invalid confirm password input.
  static const invalidConfirmPwError = "Passwords don't match";

  /// The error message for invalid current password input.
  static const invalidCurrentPwError = 'Invalid current password!';

  /// The error message for invalid username input.
  static const invalidFullNameError = 'Please enter a valid username';

  /// The error message for invalid phone number input.
  static const invalidPhoneError = 'Please enter a valid phone number';

  /// The error message for invalid address input.
  static const invalidAddressError = 'Please enter a valid home address';

  /// The const animation duration
  static const kDuration = Duration(milliseconds: 300);
}
