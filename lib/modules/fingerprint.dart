import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:qoute_app/core/extensions/widget_extension.dart';
import 'package:qoute_app/core/routes/app_router.dart';
import 'package:qoute_app/core/routes/route_generator.dart';
import 'package:qoute_app/data/notifiers/auth_notifiers.dart';
import 'package:qoute_app/data/states/future_state.dart';
import 'package:qoute_app/widgets/common_widgets/annotated_scaffolder.dart';
import 'package:qoute_app/widgets/common_widgets/icon_widget.dart';
import 'package:qoute_app/widgets/common_widgets/primary_button.dart';

class FingerPrint extends ConsumerWidget {
  const FingerPrint({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<FutureState>(biometricStateProvider, (prev, next) {
      next.maybeWhen(
        orElse: () {},
      );
    });
    return AnnotatedScaffold(
      child: Scaffold(
        appBar: MyAppbar(context),
        backgroundColor: context.theme.scaffoldBackgroundColor,
        body: SafeArea(
          top: true,
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30.h),
                    Center(
                      child: Text(
                        'Enable biometric Access',
                        style: context.theme.textTheme.bodyLarge!.copyWith(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Center(
                      child: Text(
                        'Login quickly and securely with the\n fingerprint stored on this device',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Center(
                      child: Icon(
                        Icons.fingerprint_sharp,
                        size: 80.sp,
                      ),
                    ),
                    SizedBox(height: 380.h),
                    PrimaryButton(
                      text: "Enable biotmetric access",
                      onPressed: () {
                        RouteGenerator.pushNamed(AppRouter.phone_verification);
                      },
                    ),
                    Center(
                      child: TextButton(
                        onPressed: () {},
                        child: Text("Skip for now"),
                      ),
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
