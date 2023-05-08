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

      test('empty input email field should return string (error) ', () {
        // SETUP
        const email = '';
        // DO
        var result = CustomValidator.emailValidator(email);
        // TEST
        expect(result, Constants.emptyEmailInputError);
      });
    });

    test('invalid input email field should return string (error) ', () {
      // SETUP
      const email = '';
      // DO
      var result = CustomValidator.emailValidator(email);
      // TEST
      expect(result, Constants.invalidEmailError);
    });
  });
}
