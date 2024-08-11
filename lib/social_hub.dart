import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_hub/app/bloc/app_bloc.dart';
import 'package:social_hub/repositories/authorization/authoriztion_repository.dart';
import 'package:social_hub/router/router.dart';
import 'package:social_hub/ui/theme/app_theme.dart';

class App extends StatelessWidget {
  const App({
    required AuthenticationRepository authenticationRepository,
    super.key,
  }) : _authenticationRepository = authenticationRepository;

  final AuthenticationRepository _authenticationRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _authenticationRepository,
      child: BlocProvider(
        create: (_) => AppBloc(
          authenticationRepository: _authenticationRepository,
        ),
        child: const SocialHub(),
      ),
    );
  }
}

class SocialHub extends StatelessWidget {
  const SocialHub({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();

    final appStatus = context.select((AppBloc bloc) => bloc.state.status);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
      builder: (context, child) {
        if (appStatus == AppStatus.authenticated) {
          appRouter.replaceAll([const HomeRoute()]);
        } else if (appStatus == AppStatus.unauthenticated) {
          appRouter.replaceAll([const LoginRoute()]);
        }
        return child!;
      },
    );
  }
}
