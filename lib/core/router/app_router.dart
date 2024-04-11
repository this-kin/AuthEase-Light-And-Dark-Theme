import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qoute_app/core/router/routes.dart';
import 'package:qoute_app/core/enum/route_enum.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qoute_app/presentation/modules/recover.dart';
import 'package:qoute_app/presentation/providers/auth_provider.dart';
import 'package:qoute_app/presentation/providers/states/auth_state.dart';

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

  String? redirectLogic(BuildContext context, GoRouterState state) {
    // auth provider
    final authState = _ref.read<AuthState>(authProvider);

    /// returns TRUE if current page is HOME
    final isHome = state.matchedLocation == RouteGenerator.home.path;

    /// returns TRUE if current page is LOGIN
    final isLogin = state.matchedLocation == RouteGenerator.login.path;

    /// returns TRUE if current page is SIGNUP
    final isSignup = state.matchedLocation == RouteGenerator.register.path;

    /// returns TRUE if current page is PROFILE
    final isProfile = state.matchedLocation == RouteGenerator.profile.path;

    /// if current page is LOGIN and AUTHSTATE is AUTHENTICATED
    /// if LOGIN  was successful GOTO HOME
    if (isLogin && authState is AUTHENTICATED) {
      return RouteGenerator.home.path;

      /// if current page is SIGNUP and AUTHSTATE is REGISTERED
      /// if SIGNUP was successful GOTO HOME
    } else if (isSignup && authState is REGISTERED) {
      return RouteGenerator.home.path;

      /// if current page is HOME OR PROFILE and AUTHSTATE is UNAUTHENTICATED
      /// if user LOGGED OUT GOTO LOGIN
    } else if ((isHome || isProfile) && authState is UNAUTHORIZED) {
      return RouteGenerator.login.path;

      /// if current page is ONBOARDING and AUTHSTATE is AUTHENTICATED
      /// if there's an EXISTING USER  successful GOTO HOME
      // } else if ( && authState is AUTHENTICATED) {
      //   return RouteGenerator.home.toPath;
      // }
    }
    return null;
  }

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
      path: RouteGenerator.forgot.path,
      name: RouteGenerator.forgot.name,
      builder: (_, __) => Recover(),
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
