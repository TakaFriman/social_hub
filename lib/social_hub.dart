import 'package:flutter/material.dart';
import 'package:social_hub/router/router.dart';
import 'package:social_hub/ui/theme/app_theme.dart';

class SocialHub extends StatefulWidget {
  const SocialHub({super.key});

  @override
  State<SocialHub> createState() => _SocialHubState();
}

class _SocialHubState extends State<SocialHub> {
  final router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Social Hub',
      theme: AppTheme.darkTheme,
      routerConfig: router.config(),
    );
  }
}
