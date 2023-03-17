import 'package:flutter/material.dart';
import 'package:qoute_app/core/routes/app_router.dart';
import 'package:qoute_app/core/routes/route_generator.dart';
import 'package:qoute_app/core/theme/custom_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Authentication App",
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.generateRoute,
      navigatorKey: RouteGenerator.navigatorKey,
      initialRoute: AppRouter.selector,
      themeMode: ThemeMode.light,
      theme: CustomTheme.lightTheme(context),
      darkTheme: CustomTheme.darkTheme(context),
    );
  }
}
