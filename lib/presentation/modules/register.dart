import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:qoute_app/constants/image_constants.dart';
import 'package:qoute_app/core/custom_validator.dart';
import 'package:qoute_app/presentation/providers/auth_provider.dart';
import 'package:qoute_app/presentation/providers/states/auth_state.dart';
import '../widgets/common_widgets/annotated_scaffolder.dart';
import '../widgets/common_widgets/custom_field.dart';
import '../widgets/common_widgets/text_widgets.dart';
import '../widgets/common_widgets/primary_button.dart';

class Register extends ConsumerWidget {
  static final _formKey = GlobalKey<FormState>();
  static final nameController = TextEditingController();
  static final emailController = TextEditingController();
  static final phoneController = TextEditingController();
  static final addressController = TextEditingController();
  static final passwordController = TextEditingController();

  Register({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    ref.listen<AuthState>(authProvider, (prev, next) {
      next.maybeWhen(
        registered: (_) {
          // dispose input controllers and show success message toast
          showToast(
            "Registeration Successful",
            context: context,
            backgroundColor: Colors.greenAccent,
            position: StyledToastPosition.bottom,
          );
        },
        failed: (message) {
          // show error message toast
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
          child: Form(
            key: _formKey,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SpanText(
                      title: 'Don\'t have an ',
                      subtitle: 'account ?',
                    ),
                    SizedBox(height: 5.h),
                    Text("Create an account and start a new Journey"),
                    SizedBox(height: 35.h),
                    CustomTextField(
                      hintText: 'John Doe',
                      controller: nameController,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      validator: CustomValidator.fullNameValidator,
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
                      hintText: '0906 873 2878',
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                      textInputAction: TextInputAction.next,
                      validator: CustomValidator.phoneValidator,
                    ),
                    SizedBox(height: 15.h),
                    CustomTextField(
                      hintText: '3b Admiralty Lagos',
                      controller: addressController,
                      keyboardType: TextInputType.streetAddress,
                      textInputAction: TextInputAction.next,
                      validator: CustomValidator.addressValidator,
                    ),
                    SizedBox(height: 15.h),
                    CustomTextField(
                      hintText: '* * * * * * * * *',
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.next,
                      validator: CustomValidator.passwordValidator,
                    ),
                    SizedBox(height: 100.h),
                    Consumer(
                      builder: (_, WidgetRef ref, child) {
                        final state = ref.watch(authProvider);
                        return state.maybeWhen(
                          orElse: () => child!,
                          authenticating: () => const Center(
                            child: CupertinoActivityIndicator(),
                          ),
                        );
                      },
                      child: PrimaryButton(
                        text: "Sign Up",
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            /// if forms are filled correctly then sign up
                            ref.read(authProvider.notifier).signup(
                                  name: nameController.text,
                                  email: emailController.text,
                                  phone: phoneController.text,
                                  address: addressController.text,
                                  password: passwordController.text,
                                );
                          }
                        },
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Center(
                      child: SmallSpanText(
                        title: 'Already have an account? ',
                        subtitle: 'Login',
                        onPressed: () {
                          // go to register
                          GoRouter.of(context).pop();
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
    nameController.clear();
    emailController.clear();
    passwordController.clear();
    phoneController.clear();
    addressController.clear();
  }
}
