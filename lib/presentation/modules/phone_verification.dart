import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';
import 'package:qoute_app/constants/image_constants.dart';
import 'package:qoute_app/presentation/providers/auth_provider.dart';
import 'package:qoute_app/presentation/providers/states/auth_state.dart';
import '../widgets/common_widgets/annotated_scaffolder.dart';
import '../widgets/common_widgets/custom_field.dart';
import '../widgets/common_widgets/text_widgets.dart';

class Verification extends ConsumerWidget {
  final otpController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AuthState>(authProvider, (prev, next) {
      next.maybeWhen(
        authenticated: (_) {
          otpController.clear();
        },
        failed: (message) {
          // show dialog with message error
          otpController.clear();
        },
        orElse: () {},
      );
    });
    final theme = Theme.of(context);
    return AnnotatedScaffold(
      child: Scaffold(
        appBar: AppBar(
          leading: Semantics(
            button: true,
            child: InkWell(
              onTap: () {
                // go back
                GoRouter.of(context).pop();
              },
              borderRadius: BorderRadius.circular(20.sp),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: SvgPicture.asset(
                  ConstantImage.back,
                  fit: BoxFit.scaleDown,
                  color: theme.iconTheme.color,
                ),
              ),
            ),
          ),
          backgroundColor: theme.scaffoldBackgroundColor,
        ),
        backgroundColor: theme.scaffoldBackgroundColor,
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
                        // ref.read(authProvider.notifier).verify(code: value);
                      },
                    ),
                  ),
                  SizedBox(height: 440.h),
                  Center(
                    child: SmallSpanText(
                      title: 'Didn\'t get code? ',
                      subtitle: 'Resend Code',
                      onPressed: () {
                        // request for otp code
                      },
                    ),
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
