import 'package:bookly_app/Features/Splash/presentation/view/Splashview.dart';
import 'package:bookly_app/Features/home/presentation/views/homeview.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
 static const Khomeview = '/homeview' ;
 static final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const Splashview();
      },
      routes: <RouteBase>[
        GoRoute(
          path: Khomeview ,
          builder: (BuildContext context, GoRouterState state) {
            return const Homeview();
          },
        ),
      ],
    ),
  ],
);
}
