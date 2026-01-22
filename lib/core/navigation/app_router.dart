import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import './router_path.dart';

class AppRouter {
  final GlobalKey<NavigatorState> _rootNavigatorKey =
      GlobalKey<NavigatorState>();

  late final GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: RouterPath.splash,
    errorBuilder: (_, GoRouterState state) =>
        const Scaffold(body: Center(child: Text('Page not found'))),
    routes: <RouteBase>[

    ],
  );
}
