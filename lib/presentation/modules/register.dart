import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoute_app/core/custom_validator.dart';
import 'package:qoute_app/core/extensions/widget_extension.dart';
import 'package:qoute_app/presentation/providers/auth_provider.dart';
import 'package:qoute_app/presentation/providers/states/auth_state.dart';
import '../widgets/common_widgets/annotated_scaffolder.dart';
import '../widgets/common_widgets/custom_field.dart';
import '../widgets/common_widgets/icon_widget.dart';
import '../widgets/common_widgets/text_widgets.dart';
import '../widgets/common_widgets/primary_button.dart';

class Register extends ConsumerWidget {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Register({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AuthState>(authProvider, (prev, next) {
      next.maybeWhen(
        registered: (_) {
          nameController.clear();
          emailController.clear();
          passwordController.clear();
          // RouteGenerator.pushNamed(AppRouter.verification);
        },
        failed: (message) {
          // show dialog with message error
          nameController.clear();
          emailController.clear();
          passwordController.clear();
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
          child: Form(
            key: _formKey,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SpanText(
                      title: 'Create an\n',
                      subtitle: 'Account',
                    ),
                    SizedBox(height: 40.h),
                    CustomTextField(
                      hintText: 'John Doe',
                      controller: nameController,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      validator: CustomValidator.emailValidator,
                    ),
                    SizedBox(height: 15.h),
                    CustomTextField(
                      hintText: 'johndoe@gmail.com',
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      validator: CustomValidator.emailValidator,
                    ),
                    SizedBox(height: 15.h),
                    CustomTextField(
                      hintText: '* * * * * * * * *',
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.next,
                      validator: CustomValidator.passwordValidator,
                    ),
                    SizedBox(height: 20.h),
                    PrimaryButton(
                      text: "Sign Up",
                      onPressed: () {
                        // RouteGenerator.pushNamed(AppRouter.verification);
                        // if (_formKey.currentState!.validate()) {
                        //   // sign up
                        //   _formKey.currentState!.save();
                        //   ref.read(authProvider.notifier).signup(
                        //         name: nameController.text,
                        //         email: emailController.text,
                        //         password: passwordController.text,
                        //       );
                        // }
                      },
                    ),
                    SizedBox(height: 250.h),
                    Center(
                      child: SmallSpanText(
                        title: 'Already have an Account? ',
                        subtitle: 'Login',
                        onPressed: () {
                          // go to register
                          // RouteGenerator.pop();
                        },
                      ),
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
