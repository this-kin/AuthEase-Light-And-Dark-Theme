import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qoute_app/core/router/routes.dart';
import 'package:qoute_app/core/enum/route_enum.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qoute_app/data/entities/blog_model.dart';
import 'package:qoute_app/presentation/modules/article.dart';
import 'package:qoute_app/presentation/modules/create_article.dart';
import 'package:qoute_app/presentation/modules/detail.dart';
import 'package:qoute_app/presentation/modules/inbox.dart';
import 'package:qoute_app/presentation/modules/search.dart';
import 'package:qoute_app/presentation/modules/update_article.dart';

final GlobalKey<NavigatorState> _rootNavigator = GlobalKey(debugLabel: 'root');

final GlobalKey<NavigatorState> _shellNavigator =
    GlobalKey(debugLabel: 'shell');

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
  final Ref ref;

  RouteNotifier(this.ref);

  String? redirectLogic(BuildContext context, GoRouterState state) {
    return null;
  }

  List<RouteBase> get routes => _routes;

  final List<RouteBase> _routes = [
    GoRoute(
      path: RouteGenerator.article.path,
      name: RouteGenerator.article.name,
      builder: (_, __) => CreateArticle(),
    ),
    GoRoute(
      path: RouteGenerator.details.path,
      name: RouteGenerator.details.name,
      builder: (_, state) => ArticleDetail(blog: state.extra as BlogModel),
    ),
    GoRoute(
      path: RouteGenerator.update.path,
      name: RouteGenerator.update.name,
      builder: (_, state) => UpdateArticle(blog: state.extra as BlogModel),
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, shell) => Home(navigationShell: shell),
      branches: [
        StatefulShellBranch(navigatorKey: _shellNavigator, routes: [
          GoRoute(
            path: RouteGenerator.home.path,
            name: RouteGenerator.home.name,
            builder: (_, __) => Article(),
          ),
        ]),
        StatefulShellBranch(routes: [
          GoRoute(
            path: RouteGenerator.inbox.path,
            name: RouteGenerator.inbox.name,
            builder: (_, __) => Inbox(),
          ),
        ]),
        StatefulShellBranch(routes: [
          GoRoute(
            path: RouteGenerator.search.path,
            name: RouteGenerator.search.name,
            builder: (_, __) => Search(),
          ),
        ]),
        StatefulShellBranch(routes: [
          GoRoute(
            path: RouteGenerator.profile.path,
            name: RouteGenerator.profile.name,
            builder: (_, __) => Profile(),
          ),
        ]),
      ],
    ),
  ];
}
