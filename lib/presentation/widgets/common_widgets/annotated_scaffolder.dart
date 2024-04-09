import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qoute_app/constants/app_constants.dart';
import 'package:qoute_app/presentation/providers/theme_provider.dart';

class AnnotatedScaffold extends ConsumerWidget {
  final Widget? child;

  const AnnotatedScaffold({
    Key? key,
    this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final con = ref.watch(themeChangeProvider);
    return AnimatedSwitcher(
      duration: kDuration,
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          // [supports for only andriod]
          statusBarIconBrightness: con.themeMode == ThemeMode.light
              ? Brightness.dark
              : Brightness.light,
          // [supports for only ios]
          statusBarBrightness: con.themeMode == ThemeMode.light
              ? Brightness.light
              : Brightness.dark,
          statusBarColor: Colors.transparent,
        ),
        child: Flexible(child: child!),
      ),
    );
  }
}
