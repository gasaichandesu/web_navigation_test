import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:web_navigation_test/router/app_router.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'About page',
        ),
        MaterialButton(
          onPressed: () {
            context.pushRoute(const HomeRoute());
          },
        )
      ],
    );
  }
}
