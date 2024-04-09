import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoute_app/core/custom_validator.dart';
import 'package:qoute_app/widgets/common_widgets/annotated_scaffolder.dart';
import 'package:qoute_app/widgets/common_widgets/custom_field.dart';
import 'package:qoute_app/widgets/common_widgets/icon_widget.dart';
import 'package:qoute_app/widgets/common_widgets/primary_button.dart';
import 'package:qoute_app/widgets/common_widgets/text_widgets.dart';

class NewPassword extends ConsumerWidget {
  final _formKey = GlobalKey<FormState>();
  NewPassword({super.key});

  final passwordController = TextEditingController();
  final confirmController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AnnotatedScaffold(
      child: Scaffold(
        appBar: MyAppbar(context),
        body: SafeArea(
          top: true,
          child: Form(
            key: _formKey,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SpanText(
                      title: 'Create a new\n',
                      subtitle: 'Password',
                    ),
                    SizedBox(height: 10.h),
                    Text(
                        'Enter your email address so we can send\nan instructions about resetting your password'),
                    SizedBox(height: 30.h),
                    CustomTextField(
                      hintText: '* * * * * * * * *',
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.next,
                      validator: CustomValidator.passwordValidator,
                    ),
                    SizedBox(height: 20.h),
                    CustomTextField(
                      hintText: '* * * * * * * * *',
                      controller: confirmController,
                      keyboardType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        return CustomValidator.confirmPasswordValidator(
                            value, passwordController.text);
                      },
                    ),
                    SizedBox(height: 330.h),
                    PrimaryButton(
                      text: 'Continue',
                      onPressed: () {
                        //
                      },
                    )
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
