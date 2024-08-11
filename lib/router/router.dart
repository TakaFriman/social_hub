import 'package:auto_route/auto_route.dart';
import 'package:social_hub/screens/auth/login/login.dart';
import 'package:social_hub/screens/auth/register/register.dart';
import 'package:social_hub/screens/feed/feed.dart';
import 'package:social_hub/screens/home/home.dart';
import 'package:social_hub/screens/profile/profile.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        RedirectRoute(path: '/', redirectTo: '/login'), 
        AutoRoute(
          page: LoginRoute.page,
          path: '/login',
        ),
        AutoRoute(
          page: RegisterRoute.page,
          path: '/register',
        ),
        AutoRoute(
          page: HomeRoute.page,
          path: '/',
          children: [
            AutoRoute(
              page: FeedRoute.page,
              path: 'feed',
            ),
            AutoRoute(
              page: ProfileRoute.page,
              path: 'profile',
            ),
          ],
        ),
      ];
}
