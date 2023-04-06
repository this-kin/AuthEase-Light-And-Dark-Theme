import 'package:flutter/material.dart';
import 'package:qoute_app/core/routes/app_router.dart';
import 'package:qoute_app/modules/login.dart';
import 'package:qoute_app/modules/register.dart';
import 'package:qoute_app/route_selector.dart';

class RouteGenerator {
  RouteGenerator._();

  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRouter.selector:
        return MaterialPageRoute(builder: (_) => RouteSelector());
      case AppRouter.register:
        return MaterialPageRoute(builder: (_) => Register());
      case AppRouter.login:
        return MaterialPageRoute(builder: (_) => Login());
      case AppRouter.phone_verification:
        return MaterialPageRoute(builder: (_) => RouteSelector());
      case AppRouter.setup_pin:
        return MaterialPageRoute(builder: (_) => RouteSelector());
      case AppRouter.fingerprint:
        return MaterialPageRoute(builder: (_) => RouteSelector());
      case AppRouter.verification:
        return MaterialPageRoute(builder: (_) => RouteSelector());
      default:
        return MaterialPageRoute(builder: (_) => RouteSelector());
    }
  }

  // push to named route with optional [dynamic] arguments
  static Future<dynamic> pushNamed(String routeName, {dynamic args}) {
    return navigatorKey.currentState!.pushNamed(routeName, arguments: args);
  }

  // returns back to the previous route [pop]
  static Future<void> pop([dynamic result]) async {
    navigatorKey.currentState!.pop(result);
  }

  // remove all existing routes and go to named route
  static void popUntil(String routeName) {
    navigatorKey.currentState!.popUntil(ModalRoute.withName(routeName));
  }

  // remove all existing routes and go to app selector route
  static void popUntilRoot() {
    navigatorKey.currentState!
        .popUntil(ModalRoute.withName(AppRouter.selector));
  }
}
