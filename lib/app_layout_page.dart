import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:web_navigation_test/router/app_router.dart';

class AppLayoutPage extends StatelessWidget {
  const AppLayoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRouter(),
        AboutRouter(),
      ],
      bottomNavigationBuilder: (_, router) {
        return BottomNavigationBar(
          currentIndex: router.activeIndex,
          onTap: router.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'About',
              icon: Icon(Icons.info),
            ),
          ],
        );
      },
    );
  }
}
