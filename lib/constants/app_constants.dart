const kDuration = Duration(milliseconds: 300);

class Constants {
  static RegExp emailRegex = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z\.]+\.(com|pk)+",
  );

  static RegExp contactRegex = RegExp(r'^(03|3)\d{9}$');

  static RegExp fullNameRegex = RegExp(r'^[a-zA-Z ]+$');

  static RegExp zipCodeRegex = RegExp(r'^\d{5}$');

  static final RegExp otpDigitRegex = RegExp('^[0-9]{1}\$');

  static const invalidEmailError = 'Please enter a valid email address';

  static const emptyEmailInputError = 'Please enter an email';

  static const emptyPasswordInputError = 'Please enter a password';

  static const invalidConfirmPwError = "Passwords don't match";

  static const invalidCurrentPwError = 'Invalid current password!';

  static const invalidNewPwError = "Current and new password can't be same";

  static const invalidFullNameError = 'Please enter a valid full name';

  static const emptyAddressInputError = 'Please enter a address';

  static const emptyBranchInputError = 'Please enter the branch name';

  static const invalidContactError = 'Please enter a valid contact';

  static const invalidZipCodeError = 'Please enter a valid zip code';

  static const invalidPromoCodeError = 'Please enter a valid promo code';

  static const invalidCreditCardNumberError = 'Invalid credit card number';

  static const invalidCreditCardCVVError = 'Please enter a valid CVV';

  static const invalidCreditCardExpiryError =
      'Please enter a valid expiry date';
}
