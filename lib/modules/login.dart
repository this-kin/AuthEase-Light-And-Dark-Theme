import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoute_app/core/custom_validator.dart';
import 'package:qoute_app/core/extensions/widget_extension.dart';
import 'package:qoute_app/widgets/common_widgets/annotated_scaffolder.dart';
import 'package:qoute_app/widgets/common_widgets/custom_field.dart';
import 'package:qoute_app/widgets/common_widgets/primary_button.dart';
import 'package:qoute_app/widgets/common_widgets/text_widgets.dart';

class Login extends StatelessWidget {
  //
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AnnotatedScaffold(
      child: Scaffold(
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
                  SizedBox(height: 50.h),
                  SpanText(
                    title: 'Welcome ',
                    subtitle: 'Back',
                  ),
                  SizedBox(height: 70.h),
                  CustomTextField(
                    hintText: 'formatable2018@gmail.com',
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    validator: CustomValidator.emailValidator,
                  ),
                  SizedBox(height: 15.h),
                  CustomTextField(
                    hintText: '* * * * * * * * *',
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.next,
                    validator: CustomValidator.passwordValidator,
                  ),
                  SizedBox(height: 20.h),
                  PrimaryButton(
                    text: "Login",
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // login
                      }
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
