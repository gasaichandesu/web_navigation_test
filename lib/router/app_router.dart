import 'package:auto_route/auto_route.dart';
import 'package:web_navigation_test/about_page.dart';
import 'package:web_navigation_test/app_layout_page.dart';
import 'package:web_navigation_test/home_page.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: AppLayoutPage,
      path: '/main',
      initial: true,
      children: [
        AutoRoute(
          page: EmptyRouterPage,
          name: 'HomeRouter',
          path: 'home',
          initial: true,
          children: [
            AutoRoute(
              page: HomePage,
              initial: true,
            ),
          ],
        ),
        AutoRoute(
          page: EmptyRouterPage,
          name: 'AboutRouter',
          path: 'about',
          children: [
            AutoRoute(
              page: AboutPage,
              initial: true,
            ),
          ],
        ),
      ],
    ),
    RedirectRoute(path: '*', redirectTo: '/main'),
    // AutoRoute(
    //   page: AboutPage,
    //   name: 'AboutExternal',
    // ),
  ],
)
class AppRouter extends _$AppRouter {}
