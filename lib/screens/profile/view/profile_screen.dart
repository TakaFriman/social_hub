import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_hub/app/bloc/app_bloc.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final user = context.select((AppBloc bloc) => bloc.state.user);
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          actions: [
            IconButton(
              key: const Key('logout_iconButton'),
              icon: const Icon(Icons.exit_to_app),
              onPressed: () {
                context.read<AppBloc>().add(const AppLogoutRequested());
              },
            ),
          ],
          title: Text(
            'Профиль',
            style: theme.textTheme.titleLarge,
          ),
        ),
        SliverToBoxAdapter(
          child: Center(
            heightFactor: 25,
            child: Text(
              user.email ?? '',
              style: theme.textTheme.titleLarge,
            ),
          ),
        ),
      ],
    );
  }
}
