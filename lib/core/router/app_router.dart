import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qoute_app/core/router/routes.dart';
import 'package:qoute_app/core/enum/route_enum.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qoute_app/presentation/modules/inbox.dart';
import 'package:qoute_app/presentation/modules/search.dart';

final GlobalKey<NavigatorState> _rootNavigator = GlobalKey(debugLabel: 'root');

final Provider<GoRouter> routerProvider = Provider<GoRouter>((ref) {
  final router = RouteNotifier(ref);

  return GoRouter(
    refreshListenable: router,
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigator,
    redirect: router.redirectLogic,
    initialLocation: RouteGenerator.home.path,
    errorBuilder: (_, state) => ErrorPage(state: state),
    routes: router.routes,
  );
});

class RouteNotifier extends ChangeNotifier {
  final Ref _ref;

  RouteNotifier(this._ref) {}

  String? redirectLogic(BuildContext context, GoRouterState state) {
    return null;
  }

  List<RouteBase> get routes => _routes;

  final List<RouteBase> _routes = [
    GoRoute(
      path: RouteGenerator.home.path,
      name: RouteGenerator.home.name,
      builder: (_, __) => Home(),
    ),
    GoRoute(
      path: RouteGenerator.inbox.path,
      name: RouteGenerator.inbox.name,
      builder: (_, __) => Inbox(),
    ),
    GoRoute(
      path: RouteGenerator.search.path,
      name: RouteGenerator.search.name,
      builder: (_, __) => Search(),
    ),
    GoRoute(
      path: RouteGenerator.profile.path,
      name: RouteGenerator.profile.name,
      builder: (_, __) => Profile(),
    ),
  ];
}
