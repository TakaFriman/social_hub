import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:social_hub/router/router.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        FeedRoute(),
        ProfileRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) => _openScreen(index, tabsRouter),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.feed), label: 'Лента'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Профиль'),
            ],
          ),
        );
      },
    );
  }

  void _openScreen(int index, TabsRouter tabsRouter) {
    tabsRouter.setActiveIndex(index);
  }
}
