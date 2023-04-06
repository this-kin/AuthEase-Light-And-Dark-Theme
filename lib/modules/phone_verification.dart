import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:qoute_app/core/extensions/widget_extension.dart';
import 'package:qoute_app/core/routes/app_router.dart';
import 'package:qoute_app/core/routes/route_generator.dart';
import 'package:qoute_app/widgets/common_widgets/annotated_scaffolder.dart';
import 'package:qoute_app/widgets/common_widgets/custom_field.dart';
import 'package:qoute_app/widgets/common_widgets/icon_widget.dart';
import 'package:qoute_app/widgets/common_widgets/primary_button.dart';
import 'package:qoute_app/widgets/common_widgets/text_widgets.dart';

class Verification extends StatelessWidget {
  //
  final _formKey = GlobalKey<FormState>();
  final otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AnnotatedScaffold(
      child: Scaffold(
        appBar: MyAppbar(context),
        backgroundColor: context.theme.scaffoldBackgroundColor,
        body: SafeArea(
          top: true,
          child: Form(
            key: _formKey,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
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
                    ),
                  ),
                  SizedBox(height: 440.h),
                  PrimaryButton(
                    text: "Continue",
                    onPressed: () {
                      // if (_formKey.currentState!.validate()) {
                      //   // login
                      // }
                      RouteGenerator.pushNamed(AppRouter.fingerprint);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
