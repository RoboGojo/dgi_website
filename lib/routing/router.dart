import 'package:dgi_website/pages/cardinalBeliefs.dart';
import 'package:dgi_website/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'routes.dart';

GoRouter router() => GoRouter(
      initialLocation: Routes.home,
      debugLogDiagnostics: true,
      redirect: _redirect,
      routes: [
        GoRoute(
            path: Routes.home,
            builder: (context, state) {
              return const HomePage();
            }),
        GoRoute(
            path: Routes.cardinalBeliefs,
            builder: (context, state) {
              return const CardinalBeliefsPage();
            }),
      ],
    );

Future<String?> _redirect(BuildContext context, GoRouterState state) async {
  return null;
}
