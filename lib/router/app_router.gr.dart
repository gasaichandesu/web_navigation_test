// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    AppLayoutRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const AppLayoutPage(),
      );
    },
    HomeRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    AboutRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    AboutRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const AboutPage(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/main',
          fullMatch: true,
        ),
        RouteConfig(
          AppLayoutRoute.name,
          path: '/main',
          children: [
            RouteConfig(
              '#redirect',
              path: '',
              parent: AppLayoutRoute.name,
              redirectTo: 'home',
              fullMatch: true,
            ),
            RouteConfig(
              HomeRouter.name,
              path: 'home',
              parent: AppLayoutRoute.name,
              children: [
                RouteConfig(
                  HomeRoute.name,
                  path: '',
                  parent: HomeRouter.name,
                )
              ],
            ),
            RouteConfig(
              AboutRouter.name,
              path: 'about',
              parent: AppLayoutRoute.name,
              children: [
                RouteConfig(
                  AboutRoute.name,
                  path: '',
                  parent: AboutRouter.name,
                )
              ],
            ),
          ],
        ),
        RouteConfig(
          '*#redirect',
          path: '*',
          redirectTo: '/main',
          fullMatch: true,
        ),
      ];
}

/// generated route for
/// [AppLayoutPage]
class AppLayoutRoute extends PageRouteInfo<void> {
  const AppLayoutRoute({List<PageRouteInfo>? children})
      : super(
          AppLayoutRoute.name,
          path: '/main',
          initialChildren: children,
        );

  static const String name = 'AppLayoutRoute';
}

/// generated route for
/// [EmptyRouterPage]
class HomeRouter extends PageRouteInfo<void> {
  const HomeRouter({List<PageRouteInfo>? children})
      : super(
          HomeRouter.name,
          path: 'home',
          initialChildren: children,
        );

  static const String name = 'HomeRouter';
}

/// generated route for
/// [EmptyRouterPage]
class AboutRouter extends PageRouteInfo<void> {
  const AboutRouter({List<PageRouteInfo>? children})
      : super(
          AboutRouter.name,
          path: 'about',
          initialChildren: children,
        );

  static const String name = 'AboutRouter';
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [AboutPage]
class AboutRoute extends PageRouteInfo<void> {
  const AboutRoute()
      : super(
          AboutRoute.name,
          path: '',
        );

  static const String name = 'AboutRoute';
}
