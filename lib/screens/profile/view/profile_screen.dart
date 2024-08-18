import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_hub/app/bloc/app_bloc.dart';
import 'package:social_hub/screens/profile/components/components.dart';
import 'package:social_hub/ui/ui.dart';

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
        const SliverToBoxAdapter(child: SizedBox(height: 32)),
        const SliverToBoxAdapter(
            child: Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.black,
              radius: 50,
            ),
            Text('name'),
            Text('nickname')
          ],
        )),
        const SliverToBoxAdapter(child: SizedBox(height: 32)),
        SliverToBoxAdapter(
          child: SettingsActionCard(
            title: 'Мой профиль',
            suffixIcon: Icons.arrow_forward_ios,
            onTap: () {},
            leadingIcon: Icons.person,
            iconColor: Colors.red,
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 12)),
        const SliverToBoxAdapter(child: ContainerSettingsCommon()),
        const SliverToBoxAdapter(child: SizedBox(height: 12)),
        const SliverToBoxAdapter(child: ContainerSettingsCommon()),
      ],
    );
  }
}
