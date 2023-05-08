import 'package:flutter_test/flutter_test.dart';
import 'package:qoute_app/constants/app_constants.dart';
import 'package:qoute_app/core/custom_validator.dart';

void main() {
  group('Form Validator', () {
    group('email input validation', () {
      test('filled input email field should return null (correct)', () {
        // SETUP
        const email = 'amailtodammy@gmail.com';
        // DO
        var result = CustomValidator.emailValidator(email);
        // TEST
        expect(result, null);
      });

      test('empty input email field should return string (fail) ', () {
        // SETUP
        const email = '';
        // DO
        var result = CustomValidator.emailValidator(email);
        // TEST
        expect(result, Constants.emptyEmailInputError);
      });
    });

    test('invalid input email field should return string (fail) ', () {
      // SETUP
      const email = 'gmail.com';
      // DO
      var result = CustomValidator.emailValidator(email);
      // TEST
      expect(result, Constants.invalidEmailError);
    });
  });

  group('password inputs validation', () {
    test('filled input password field should return null (correct)', () {
      // SETUP
      const password = 'Password.2023';
      // DO
      var result = CustomValidator.passwordValidator(password);
      // TEST
      expect(result, null);
    });

    test('empty input password field should return string (fail)', () {
      // SETUP
      const password = '';
      // DO
      var result = CustomValidator.passwordValidator(password);
      // TEST
      expect(result, Constants.emptyPasswordInputError);
    });
    test('matching password and confirm password should return null (correct)',
        () {
      // SETUP
      const password = 'Password200.';
      const conPassword = 'Password200.';
      // DO
      var result =
          CustomValidator.confirmPasswordValidator(password, conPassword);
      // TEST
      expect(result, null);
    });

    test(
        'diffrent password value and confirm password should return string (error)',
        () {
      // SETUP
      const incorrectPassword = 'Pass';

      const conPassword = 'Password';
      const emptyConPassword = '';
      // DO
      var result = CustomValidator.confirmPasswordValidator(
          incorrectPassword, conPassword);
      // TEST
      expect(result, Constants.invalidConfirmPwError);

      // DO
      var incorrectResult = CustomValidator.confirmPasswordValidator(
          emptyConPassword, incorrectPassword);
      // TEST
      expect(incorrectResult, Constants.invalidConfirmPwError);
    });

    group('fullname input validation', () {
      test('a valid user name should return null (correct)', () {
        // SETUP
        const username = 'John Doe';
        // DO
        final result = CustomValidator.fullNameValidator(username);
        //TEST
        expect(result, null);
      });
      test('an invalid user name should return string (fail)', () {
        // SETUP
        const username = 'John404Doe';
        // DO
        final result = CustomValidator.fullNameValidator(username);
        //TEST
        expect(result, Constants.invalidFullNameError);
      });

      test('a null username should return string (fail)', () {
        // SETUP
        const username = '';
        // DO
        final result = CustomValidator.fullNameValidator(username);
        //TEST
        expect(result, Constants.invalidFullNameError);
      });
    });
  });
}
