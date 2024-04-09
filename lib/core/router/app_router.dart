import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qoute_app/core/router/routes.dart';
import 'package:qoute_app/core/enum/route_enum.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final GlobalKey<NavigatorState> _rootNavigator = GlobalKey(debugLabel: 'root');

final Provider<GoRouter> routerProvider = Provider<GoRouter>((ref) {
  final router = RouteNotifier(ref);

  return GoRouter(
    refreshListenable: router,
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigator,
    redirect: router.redirectLogic,
    initialLocation: RouteGenerator.login.path,
    errorBuilder: (_, state) => ErrorPage(state: state),
    routes: router.routes,
  );
});

class RouteNotifier extends ChangeNotifier {
  final Ref _ref;

  RouteNotifier(this._ref);

  String? redirectLogic(BuildContext context, GoRouterState state) {}

  List<RouteBase> get routes => _routes;

  final List<RouteBase> _routes = [
    GoRoute(
      path: RouteGenerator.login.path,
      name: RouteGenerator.login.name,
      builder: (_, __) => Login(),
    ),
    GoRoute(
      path: RouteGenerator.register.path,
      name: RouteGenerator.register.name,
      builder: (_, __) => Register(),
    ),
    GoRoute(
      path: RouteGenerator.home.path,
      name: RouteGenerator.home.name,
      builder: (_, __) => Home(),
    ),
    GoRoute(
      path: RouteGenerator.profile.path,
      name: RouteGenerator.profile.name,
      builder: (_, __) => Profile(),
    ),
  ];
}
