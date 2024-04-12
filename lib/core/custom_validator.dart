import 'package:qoute_app/constants/app_constants.dart';
import 'package:qoute_app/core/extensions/string_extensions.dart';

class CustomValidator {
  CustomValidator._();

  /// A function/method that validates user input email
  static String? emailValidator(String? email) {
    if (email == null || email.isEmpty) {
      return Constants.emptyEmailInputError;
    } else if (!email.isValidEmail) {
      return Constants.invalidEmailError;
    }
    return null;
  }

  /// A function/method that validates user input password
  static String? passwordValidator(String? password) {
    if (password!.isEmpty) return Constants.emptyPasswordInputError;
    return null;
  }

  /// A function/method that validates user input confirm password takes in password and confirm password
  static String? confirmPasswordValidator(String? confirmPw, String inputPw) {
    if (confirmPw == inputPw.trim()) return null;
    return Constants.invalidConfirmPwError;
  }

  /// A function/method that validates user input name
  static String? fullNameValidator(String? fullName) {
    if (fullName != null && fullName.isValidFullName)
      return null;
    else if (fullName == null) return Constants.emptyNameError;
    return Constants.invalidFullNameError;
  }

  /// A function/method that validates user input address
  static String? addressValidator(String? address) {
    if (address != null && address.isNotEmpty) return null;
    return Constants.emptyAddressError;
  }

  /// A function/method that validates user input name
  static String? phoneValidator(String? fullName) {
    if (fullName != null && fullName.isValidContact)
      return null;
    else if (fullName == null || fullName.isEmpty)
      return Constants.emptyAddressError;
    return Constants.invalidPhoneError;
  }
}
