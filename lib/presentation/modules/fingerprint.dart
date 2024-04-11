import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:qoute_app/constants/image_constants.dart';
import 'package:qoute_app/core/extensions/widget_extension.dart';
import '../widgets/common_widgets/annotated_scaffolder.dart';
import '../widgets/common_widgets/icon_widget.dart';
import '../widgets/common_widgets/primary_button.dart';

class FingerPrint extends ConsumerWidget {
  const FingerPrint({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
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
                  color: context.theme.iconTheme.color,
                ),
              ),
            ),
          ),
        ),
        backgroundColor: theme.scaffoldBackgroundColor,
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
                        //
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
