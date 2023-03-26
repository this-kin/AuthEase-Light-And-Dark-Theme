const kDuration = Duration(milliseconds: 300);

class Constants {
  // an email regex (Regular Expression) to validate email (ex: amailtodammy@gmail.com)
  static RegExp emailRegex = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z\.]+\.(com|pk)+",
  );

  // a contact regex (Regular Expression) to validate email
  static RegExp contactRegex = RegExp(r'^(03|3)\d{9}$');

  // a name regex (Regular Expression) to validate username (ex: Dammy, Richie)
  static RegExp fullNameRegex = RegExp(r'^[a-zA-Z ]+$');

  // a zip code regex (Regular expression) to validate user zip code
  static RegExp zipCodeRegex = RegExp(r'^\d{5}$');

  //
  static const invalidEmailError = 'Please enter a valid email address';

  static const emptyEmailInputError = 'Please enter an email';

  static const emptyPasswordInputError = 'Please enter a password';

  static const invalidConfirmPwError = "Passwords don't match";

  static const invalidCurrentPwError = 'Invalid current password!';

  static const invalidNewPwError = "Current and new password can't be same";

  static const invalidFullNameError = 'Please enter a valid full name';

  static const invalidZipCodeError = 'Please enter a valid zip code';
}
