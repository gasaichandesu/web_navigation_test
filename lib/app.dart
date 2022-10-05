import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:web_navigation_test/router/app_router.dart';

class App extends StatelessWidget {
  final _router = AppRouter();

  App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return GlobalLoaderOverlay(
          overlayWholeScreen: false,
          overlayHeight: 200.0,
          child: MaterialApp.router(
            routerDelegate: _router.delegate(),
            routeInformationParser: _router.defaultRouteParser(),
          ),
        );
      },
      designSize: const Size(360, 690),
      minTextAdapt: true,
    );
  }
}
