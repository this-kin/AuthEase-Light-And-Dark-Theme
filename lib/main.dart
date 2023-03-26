import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoute_app/core/routes/app_router.dart';
import 'package:qoute_app/core/routes/route_generator.dart';
import 'package:qoute_app/core/theme/custom_theme.dart';
import 'package:qoute_app/data/providers/theme_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final con = ref.watch(themeChangeProvider);
    return ScreenUtilInit(
      builder: (BuildContext context, Widget? child) {
        ref.read(themeChangeProvider.notifier).switchTheme();
        return MaterialApp(
          title: "Authentication App",
          debugShowCheckedModeBanner: false,
          onGenerateRoute: RouteGenerator.generateRoute,
          navigatorKey: RouteGenerator.navigatorKey,
          initialRoute: AppRouter.selector,
          themeMode: con.themeMode,
          theme: CustomTheme.lightTheme(context),
          darkTheme: CustomTheme.darkTheme(context),
        );
      },
    );
  }
}
