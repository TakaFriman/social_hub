import 'package:auto_route/auto_route.dart';
import 'package:social_hub/screens/home/view/view.dart';
import 'package:social_hub/screens/profile/view/view.dart';

import '../screens/feed/view/view.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, path: '/', children: [
          AutoRoute(
            page: FeedRoute.page,
            path: 'feed',
          ),
          AutoRoute(
            page: ProfileRoute.page,
            path: 'profile',
          ),
        ])
      ];
}
