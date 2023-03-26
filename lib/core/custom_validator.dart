import 'package:qoute_app/constants/app_constants.dart';
import 'package:qoute_app/core/extensions/string_extensions.dart';

class CustomValidator {
  CustomValidator._();

  static String? emailValidator(String? email) {
    if (email == null || email.isEmpty) {
      return Constants.emptyEmailInputError;
    } else if (!email.isValidEmail) {
      return Constants.invalidEmailError;
    }
    return null;
  }

  static String? passwordValidator(String? password) {
    if (password!.isEmpty) return Constants.emptyPasswordInputError;
    return null;
  }

  static String? confirmPasswordValidator(String? confirmPw, String inputPw) {
    if (confirmPw == inputPw.trim()) return null;
    return Constants.invalidConfirmPwError;
  }

  static String? currentPasswordValidator(String? inputPw, String currentPw) {
    if (inputPw == currentPw) return null;
    return Constants.invalidCurrentPwError;
  }

  static String? newPasswordValidator(String? newPw, String currentPw) {
    if (newPw!.isEmpty) {
      return Constants.emptyPasswordInputError;
    } else if (newPw == currentPw) {
      return Constants.invalidNewPwError;
    }
    return null;
  }

  static String? fullNameValidator(String? fullName) {
    if (fullName != null && fullName.isValidFullName) return null;
    return Constants.invalidFullNameError;
  }
}
