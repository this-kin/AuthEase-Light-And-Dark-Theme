import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoute_app/core/custom_validator.dart';
import 'package:qoute_app/core/extensions/widget_extension.dart';
import 'package:qoute_app/widgets/common_widgets/annotated_scaffolder.dart';
import 'package:qoute_app/widgets/common_widgets/custom_field.dart';
import 'package:qoute_app/widgets/common_widgets/icon_widget.dart';
import 'package:qoute_app/widgets/common_widgets/primary_button.dart';
import 'package:qoute_app/widgets/common_widgets/text_widgets.dart';

class Recover extends StatelessWidget {
  //
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();

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
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30.h),
                    SpanText(
                      title: 'Forgot Password',
                      subtitle: '',
                    ),
                    SizedBox(height: 10.h),
                    Text(
                        'Enter your email address so we can send\nan instructions about resetting your password'),
                    SizedBox(height: 20.h),
                    CustomTextField(
                      hintText: 'johndoe@gmail.com',
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      validator: CustomValidator.emailValidator,
                    ),
                    SizedBox(height: 440.h),
                    PrimaryButton(
                      text: "Continue",
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // we are validating before requestin forgot password
                        }
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
