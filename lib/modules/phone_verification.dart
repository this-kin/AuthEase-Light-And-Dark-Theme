import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pinput/pinput.dart';
import 'package:qoute_app/core/extensions/widget_extension.dart';
import 'package:qoute_app/core/routes/route_generator.dart';
import 'package:qoute_app/data/providers/auth_provider.dart';
import 'package:qoute_app/data/states/auth_state.dart';
import 'package:qoute_app/widgets/common_widgets/annotated_scaffolder.dart';
import 'package:qoute_app/widgets/common_widgets/custom_field.dart';
import 'package:qoute_app/widgets/common_widgets/icon_widget.dart';
import 'package:qoute_app/widgets/common_widgets/text_widgets.dart';

class Verification extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final otpController = useTextEditingController();
    ref.listen<AuthState>(authProvider, (prev, next) {
      next.maybeWhen(
        authenticated: (_) {
          otpController.clear();
          RouteGenerator.popUntilRoot();
        },
        failed: (message) {
          // show dialog with message error
        },
        orElse: () {},
      );
    });
    return AnnotatedScaffold(
      child: Scaffold(
        appBar: MyAppbar(context),
        backgroundColor: context.theme.scaffoldBackgroundColor,
        body: SafeArea(
          top: true,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30.h),
                  SpanText(
                    title: 'Enter your OTP',
                    subtitle: '',
                  ),
                  SizedBox(height: 10.h),
                  Text('OTP code sent to your email\njohndoe@gmail.com'),
                  SizedBox(height: 30.h),
                  Center(
                    child: Pinput(
                      length: 5,
                      controller: otpController,
                      closeKeyboardWhenCompleted: true,
                      defaultPinTheme: defaultPinTheme(context),
                      focusedPinTheme: focusPinTheme(context),
                      errorPinTheme: errorPinTheme(context),
                      onCompleted: (value) {
                        ref.read(authProvider.notifier).verify(code: value);
                      },
                    ),
                  ),
                  SizedBox(height: 440.h),
                  SmallSpanText(
                    title: 'Didn\'t get code? ',
                    subtitle: 'Resend Code',
                    onPressed: () {
                      // request for otp code
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
