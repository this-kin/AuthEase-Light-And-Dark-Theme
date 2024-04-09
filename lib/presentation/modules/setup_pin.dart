import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:qoute_app/core/extensions/widget_extension.dart';
import '../widgets/common_widgets/annotated_scaffolder.dart';
import '../widgets/common_widgets/custom_field.dart';
import '../widgets/common_widgets/icon_widget.dart';
import '../widgets/common_widgets/primary_button.dart';
import '../widgets/common_widgets/text_widgets.dart';

class SetPin extends ConsumerWidget {
  SetPin({super.key});

  //
  final _formKey = GlobalKey<FormState>();
  final otpController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30.h),
                    SpanText(
                      title: 'Set your PIN code',
                      subtitle: '',
                    ),
                    SizedBox(height: 10.h),
                    Text(
                        'We use state-of-art security measure to protect your information at all times'),
                    SizedBox(height: 30.h),
                    Center(
                      child: Pinput(
                        length: 5,
                        controller: otpController,
                        closeKeyboardWhenCompleted: true,
                        defaultPinTheme: defaultPinTheme(context),
                        focusedPinTheme: focusPinTheme(context),
                        errorPinTheme: errorPinTheme(context),
                        onCompleted: (value) {},
                      ),
                    ),
                    SizedBox(height: 440.h),
                    PrimaryButton(
                      text: "Create Pin",
                      onPressed: () {
                        // if (_formKey.currentState!.validate()) {
                        //   // login
                        // }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
