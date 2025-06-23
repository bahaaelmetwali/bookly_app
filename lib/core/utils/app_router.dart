import 'package:bookly_app/Features/Splash/presentation/view/Splashview.dart';
import 'package:bookly_app/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/Features/home/presentation/views/homeview.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeview';
  static const kBookDetailsview = '/bookdetailsview';

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const Splashview();
        },
      ),
      GoRoute(
        path: kHomeView,
        builder: (BuildContext context, GoRouterState state) {
          return const Homeview();
        },
      ),
      GoRoute(
        path: kBookDetailsview ,
        builder: (BuildContext context, GoRouterState state) {
          return const BookDetailsView();
        },
      ),
    ],
  );
}
