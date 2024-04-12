import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:go_router/go_router.dart';
import 'package:qoute_app/core/custom_validator.dart';
import 'package:qoute_app/core/enum/route_enum.dart';
import 'package:qoute_app/core/extensions/widget_extension.dart';
import 'package:qoute_app/presentation/providers/auth_provider.dart';
import 'package:qoute_app/presentation/providers/states/auth_state.dart';
import '../widgets/common_widgets/annotated_scaffolder.dart';
import '../widgets/common_widgets/custom_field.dart';
import '../widgets/common_widgets/primary_button.dart';
import '../widgets/common_widgets/text_widgets.dart';

class Login extends ConsumerWidget {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AuthState>(authProvider, (prev, next) {
      next.maybeWhen(
        authenticated: (_) {
          //  show success message toast
          showToast(
            "Registeration Successful",
            context: context,
            backgroundColor: Colors.greenAccent,
            position: StyledToastPosition.bottom,
          );
        },
        failed: (message) {
          // dispose input controllers and show error message toast
          // _disposeController();
          showToast(
            "$message",
            context: context,
            backgroundColor: Colors.redAccent,
            position: StyledToastPosition.bottom,
          );
        },
        orElse: () {},
      );
    });

    return AnnotatedScaffold(
      child: Scaffold(
        backgroundColor: context.theme.scaffoldBackgroundColor,
        body: SafeArea(
          top: true,
          child: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 50.h),
                    SpanText(
                      title: 'Login to Your\n',
                      subtitle: 'Account',
                    ),
                    SizedBox(height: 70.h),
                    CustomTextField(
                      hintText: 'John Doe',
                      keyboardType: TextInputType.name,
                      controller: emailController,
                      textInputAction: TextInputAction.next,
                      validator: CustomValidator.fullNameValidator,
                    ),
                    SizedBox(height: 15.h),
                    CustomTextField(
                      hintText: '* * * * * * * * *',
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.done,
                      validator: CustomValidator.passwordValidator,
                    ),
                    SizedBox(height: 20.h),
                    Consumer(
                      builder: (_, WidgetRef ref, child) {
                        final state = ref.watch(authProvider);
                        return state.maybeWhen(
                          /// if state is [AuthState.authenticating] or loading displays a
                          /// CircularProgressIndicator else if it's failed or authenticated
                          /// displays the PrimaryButton for retrying [return a type of widget
                          /// or function]

                          authenticating: () => Center(
                            child: const CircularProgressIndicator.adaptive(),
                          ),
                          orElse: () => child!,
                        );
                      },
                      child: PrimaryButton(
                        text: "Login",
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            formKey.currentState!.save();
                            // validating user input before login
                            ref.read(authProvider.notifier).login(
                                  name: emailController.text,
                                  password: passwordController.text,
                                );
                          }
                        },
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          // go to forgot password
                          GoRouter.of(context)
                              .pushNamed(RouteGenerator.forgot.name);
                        },
                        child: Text("Forgot password?"),
                      ),
                    ),
                    SizedBox(height: 240.h),
                    Center(
                      child: SmallSpanText(
                        title: 'Don\'t have an Account? ',
                        subtitle: 'Sign Up',
                        onPressed: () {
                          // go to register
                          GoRouter.of(context)
                              .pushNamed(RouteGenerator.register.name);
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

  void _disposeController() {
    emailController.clear();
    passwordController.clear();
  }
}
