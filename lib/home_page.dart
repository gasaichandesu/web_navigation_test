import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:web_navigation_test/router/app_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Home page',
        ),
        MaterialButton(
          child: Text('Hide'),
          onPressed: () => context.loaderOverlay.hide(),
        ),
        MaterialButton(
          child: Text('Show'),
          onPressed: () => context.loaderOverlay.show(),
        ),
        MaterialButton(
          onPressed: () {
            context.pushRoute(const AboutRoute());
          },
        )
      ],
    );
  }
}
