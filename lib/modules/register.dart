import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:qoute_app/core/custom_validator.dart';
import 'package:qoute_app/core/extensions/widget_extension.dart';
import 'package:qoute_app/widgets/common_widgets/annotated_scaffolder.dart';
import 'package:qoute_app/widgets/common_widgets/custom_field.dart';
import 'package:qoute_app/widgets/common_widgets/text_widgets.dart';
import '../widgets/common_widgets/primary_button.dart';

class Register extends HookConsumerWidget {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  Register({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                    title: 'Create an\n',
                    subtitle: 'Account',
                  ),
                  SizedBox(height: 70.h),
                  CustomTextField(
                    hintText: 'John Doe',
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    validator: CustomValidator.emailValidator,
                  ),
                  SizedBox(height: 15.h),
                  CustomTextField(
                    hintText: 'johndoe@gmail.com',
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
                    text: "Sign Up",
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // sign up
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
