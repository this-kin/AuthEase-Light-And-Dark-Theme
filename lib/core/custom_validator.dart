import 'package:qoute_app/constants/app_constants.dart';
import 'package:qoute_app/core/extensions/string_extensions.dart';

class CustomValidator {
  CustomValidator._();

  // a function/method that validates user input email
  static String? emailValidator(String? email) {
    if (email == null || email.isEmpty) {
      return Constants.emptyEmailInputError;
    } else if (!email.isValidEmail) {
      return Constants.invalidEmailError;
    }
    return null;
  }

  // a function/method that validates user input password
  static String? passwordValidator(String? password) {
    if (password!.isEmpty) return Constants.emptyPasswordInputError;
    return null;
  }

  // a function/method that validates user input confirm password takes in password and confirm password
  static String? confirmPasswordValidator(String? confirmPw, String inputPw) {
    if (confirmPw == inputPw.trim()) return null;
    return Constants.invalidConfirmPwError;
  }

  // a function/method that validates user input name
  static String? fullNameValidator(String? fullName) {
    if (fullName != null && fullName.isValidFullName) return null;
    return Constants.invalidFullNameError;
  }
}
