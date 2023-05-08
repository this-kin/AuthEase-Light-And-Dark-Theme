import 'package:flutter_test/flutter_test.dart';
import 'package:qoute_app/core/extensions/string_extensions.dart';

void main() {
  group('string_extensions', () {
    group('emailIsValid', () {
      test(
        'Given a valid email'
        'When extension method isValidEmail is called'
        'Then true is returned',
        () {
          // SETUP
          final email = 'amailtodammy@gmail.com';
          // DO
          final isValid = email.isValidEmail;
          // TEST
          expect(isValid, true);
        },
      );

      test(
        'Given a invalid email'
        'When extension method isValidEmail is called'
        'Then false is returned',
        () {
          // SETUP
          const email = 'amail@todammy@gmail.com';
          // DO
          final isValid = email.isValidEmail;
          // TEST
          expect(isValid, false);
        },
      );
    });

    group('isValidFullName', () {
      test(
          'Given a valid full name'
          'when extension is called method .isValidFullName is called'
          'Then true is returned', () {
        // SETUP
        const fullname = 'John Doe';
        // DO
        final isValid = fullname.isValidFullName;
        // TEST
        expect(isValid, true);
      });

      test(
          'Given a valid full name'
          'when extension is called method .isValidFullName is called'
          'Then false is returned', () {
        // SETUP
        const fullname = 'John404Doe';
        // DO
        final isValid = fullname.isValidFullName;
        // TEST
        expect(isValid, false);
      });
    });

    group('assets_prefix', () {
      test(
          'Given a valid asset path'
          'when extension method .toImage is called'
          'Then should return asssets/images/path', () {
        // SETUP
        const path = 'appicon';
        // DO
        final result = path.toImage();
        // TEST
        expect(result, 'assets/images/appicon.png');
      });

      test(
          'Given a valid asset path'
          'when extension method .toSvg is called'
          'Then should return asssets/svgs/path', () {
        // SETUP
        const path = 'logo';
        // DO
        final result = path.toSvg();
        // TEST
        expect(result, 'assets/svgs/logo.svg');
      });
    });
  });
}
