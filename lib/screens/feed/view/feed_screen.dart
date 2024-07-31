import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:social_hub/screens/feed/components/components.dart';



@RoutePage()
class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text(
            'Лента',
            style: theme.textTheme.titleLarge,
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 8)),
        SliverList.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return const PostListCard();
            })
      ],
    );
  }
}

